import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:http/http.dart' as http;

import 'package:muhammad_s_application3/data/models/login_response/data.dart';
import 'package:muhammad_s_application3/data/models/login_response/login_response.dart';

class LoginController extends GetxController {
  final _storage = const FlutterSecureStorage();
  RxBool isLoading = false.obs;
  RxBool isLoggedIn = false.obs;
  RxBool isExpanded = false.obs;
  RxString authToken = ''.obs;
  Rx<LoginResponse> loginResponse = LoginResponse().obs;
  Rx<LoginResponse> fetchdata = LoginResponse().obs;
  RxList tablerows = [].obs;

  final _tokenKey = 'auth_token';
  final _userId = 'user_id';

  Future<void> loginUser(
      {required String phone, required String password}) async {
    try {
      isLoading(true);

      final response = await http.post(
        Uri.parse('https://marketfed.cyenosure.in/api/userlogin/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'phone': phone, 'password': password}),
      );

      if (response.statusCode == 200) {
        log(response.statusCode.toString());
        final jsonResponse = json.decode(response.body);
        log(jsonResponse.toString());
        loginResponse.value = LoginResponse.fromJson(jsonResponse);
        if (loginResponse.value.message == "Invalid password !" ||
            loginResponse.value.message ==
                "Cannot read properties of null (reading '_id')") {
          log('Invalid password !');
          Get.snackbar('Error', 'Re enter Details',
              colorText: Colors.white,
              backgroundColor: Color.fromARGB(255, 175, 76, 76));
        }

        if (loginResponse.value.success == true) {
          Get.snackbar('success', 'login successfully',
              backgroundColor: Colors.green);
          log('hai${loginResponse.value.authtoken}');
          authToken.value = loginResponse.value.authtoken!;
          log(authToken.value);
          isLoggedIn(true);

          await _storage.write(key: _tokenKey, value: authToken.value);
          final userId = loginResponse.value.data!.id;
          print("userid:${userId}");
          await _storage.write(key: _userId, value: userId);
          log("${fetchdata.value.data!.tablerow![1].id}");
        }
        // Handle further actions as needed
      } else {
        // Handle error
        Get.snackbar('success', 'login successfully',
            backgroundColor: Color.fromARGB(255, 175, 76, 76));
        print('Error: ${response.reasonPhrase}');
      }
    } catch (error) {
      // Get.snackbar('Error', 'An error occurred: $error');
      // Handle unexpected errors
      print('Error: $error');
    } finally {
      isLoading(false);
    }
  }

  Future<String?> getAuthToken() async {
    return await _storage.read(key: _tokenKey);
  }

  Future<String?> getUserId() async {
    return await _storage.read(key: _userId);
  }

  Future<void> logout() async {
    await _storage.delete(key: _tokenKey);
    await _storage.delete(key: _userId);
    print('logout');
  }

  Future<void> fetchUserData(
      {required String userId, required String Authtoken}) async {
    try {
      isLoading(true);
      String url =
          'https://marketfed.cyenosure.in/api/userlogin/userdata/$userId';
      log(url);
      final response = await http.get(
        Uri.parse(url),
        headers: {'Authorization': 'Bearer $Authtoken'},
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        print(jsonResponse);
        fetchdata.value = LoginResponse.fromJson(jsonResponse);
        // loginResponse.update((val) {
        //   log(val!.authtoken.toString());
        //   val.data = Data.fromJson(jsonResponse['data']);
        // });
        // Access the user data
        log(fetchdata.value.data!.tablerow!.length.toString());
        log('User ID fetch userdata: ${fetchdata.value.data!.id}');
        print('User ID fetch userdata: ${fetchdata.value.data!.id}');
        print('User Name: ${fetchdata.value.data!.name}');
      } else {
        // Handle error
        Get.snackbar('Error', 'Server error: ${response.reasonPhrase}');
        print('Error: ${response.reasonPhrase}');
      }
    } catch (error) {
      Get.snackbar('Error', 'An error occurred: $error');
      // Handle unexpected errors
      print('Error: $error');
    } finally {
      isLoading(false);
    }
  }
}

// class LoginController extends GetxController {
//   final _storage = const FlutterSecureStorage();
//   Rx<Login> data = Login().obs;
//   RxBool isLoading = false.obs;
//   RxBool isLoggedIn = false.obs;
//   RxString authToken = ''.obs;
//   final _tokenKey = 'auth_token';
//   final _userId = 'user_id';
//   Rx<Login> loginResponse = Login().obs;
//   Rx<Employeedata> employeedata = Employeedata().obs;

//   Future<Login> loginUser({String? userid, String? password}) async {
//     try {
//       isLoading(true);

//       final response = await http.post(
//           Uri.parse('https://marketfed.cyenosure.in/api/userlogin/login'),
//           headers: {'Content-Type': 'application/json'},
//           body: jsonEncode({'phone': userid, 'password': password}));

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> jsonResponse = jsonDecode(response.body);

//         // final jsonResponse = json.decode(response.body);
//         loginResponse.value = Login.fromJson(jsonResponse);
// final token = jsonResponse['Authtoken'];
// print(token);

// await _storage.write(key: _tokenKey, value: token);
// final userId = loginResponse.value.employeedata!.id;
// print(userId);
// await _storage.write(key: _userId, value: userId);

//         // Access the response data
//         print('User ID: ${loginResponse.value.employeedata!.id}');
//         print('User Name: ${loginResponse.value.employeedata!.name}');

//         // Handle further actions as needed
//       } else {
//         // Handle error
//         Get.snackbar('Error', 'Server error: ${response.reasonPhrase}');
//         print('Error: ${response.reasonPhrase}');
//       }
//     } catch (error) {
//       Get.snackbar('Error', 'An error occurred: $error');
//       // Handle unexpected errors
//       print('Error: $error');
//     } finally {
//       isLoading(false);
//     }
//     return loginResponse.value;
//   }

//   Future<String?> getAuthToken() async {
//     return await _storage.read(key: _tokenKey);
//   }

//   Future<String?> getUserId() async {
//     return await _storage.read(key: _userId);
//   }

//   Future<void> logout() async {
//     await _storage.delete(key: _tokenKey);
//     print('logout');
//   }
// }
