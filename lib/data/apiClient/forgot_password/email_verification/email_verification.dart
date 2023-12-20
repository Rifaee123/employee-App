import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_s_application3/data/models/forgot_password_email_verification/forgot_password_email_verification.dart';
import 'package:muhammad_s_application3/routes/app_routes.dart';

class ForgotPasswordOtpController extends GetxController {
  var apiResponse = ForgotPasswordEmailVerification();
  var isLoading = false.obs;
  var isOtpSend = false.obs;

  Future<void> forgotPassword(String email) async {
    try {
      isLoading(true);

      final response = await http.post(
        Uri.parse(
            'https://marketfed.cyenosure.in/api/userlogin/forgotpassword'),
        body: {'email': email},
      );

      if (response.statusCode == 200) {
        log(response.statusCode.toString());
        var jsoneResponse = jsonDecode(response.body);
        apiResponse = ForgotPasswordEmailVerification.fromJson(jsoneResponse);
        log(apiResponse.success.toString());
        if (apiResponse.success == true) {
          isOtpSend.value = true;
        }
        Get.offNamed(AppRoutes.forgotPasswordPage);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print(e.toString());
      apiResponse = ForgotPasswordEmailVerification(
          success: false, message: 'Error occurred.');
    } finally {
      isLoading(false);
    }
  }
}
