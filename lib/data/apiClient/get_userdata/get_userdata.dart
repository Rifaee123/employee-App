// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:get/get.dart';
// import 'package:muhammad_s_application3/data/models/login/employeedata.dart';

// class UserDataController extends GetxController {
//   RxBool isLoading = false.obs;
//   RxMap userData = {}.obs;

//   Future<void> getUserData(String? authToken, String? userId) async {
//     try {
//       isLoading(true);

//       final response = await http.get(
//         Uri.parse('https://marketfed.cyenosure.in/api/userlogin/userdata/$userId'),
//         headers: {'Authorization': 'Bearer $authToken'},
//       );

//       if (response.statusCode == 200) {
//         final jsonResponse = json.decode(response.body);
//         userData.value = Employeedata.fromJson(jsonResponse) as Map;
//         // Access the response data
//         print('User ID: ${userData['Employeeid']}');
//         print('User Name: ${userData['Name']}');
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
//   }
// }

// class UserDataScreen extends StatelessWidget {
//   final UserDataController userDataController = Get.put(UserDataController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Data'),
//       ),
//       body: Center(
//         child: Obx(
//           () => userDataController.isLoading.value
//               ? CircularProgressIndicator()
//               : ElevatedButton(
//                   onPressed: () async {
//                     final authToken = 'your_auth_token_here';
//                     final userId = '656d96402d85cf33b0a6e165';
//                     await userDataController.getUserData(authToken, userId);
//                   },
//                   child: Text('Get User Data'),
//                 ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(GetMaterialApp(
//     home: UserDataScreen(),
//   ));
// }
