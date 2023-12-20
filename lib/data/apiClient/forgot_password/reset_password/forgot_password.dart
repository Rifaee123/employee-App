import 'dart:convert';

import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_s_application3/data/models/forgot_password_response/forgot_password_response.dart';

class ForgotPasswordController extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> changePassword(
      String email, String otp, String newPassword) async {
    try {
      isLoading(true);

      final response = await http.post(
        Uri.parse(
            'https://marketfed.cyenosure.in/api/userlogin/changepassword'),
        body: {
          'email': email,
          'otps': otp,
          'password': newPassword,
        },
      );

      if (response.statusCode == 200) {
        final jsoneResponse = jsonDecode(response.body);
        final passwordChangeModel =
            ForgotPasswordResponse.fromJson(jsoneResponse);
        if (passwordChangeModel.success == true) {
          // Password changed successfully
          Get.snackbar('Success', passwordChangeModel.message.toString());
          Get.offNamed(AppRoutes.loginscreenScreen);
        } else {
          // Password change failed
          Get.snackbar('Error', passwordChangeModel.message.toString());
        }
      } else {
        // Handle non-200 status codes
        Get.snackbar('Error', 'Failed to change password');
      }
    } catch (e) {
      // Handle other errors
      Get.snackbar('Error', 'An error occurred');
    } finally {
      isLoading(false);
    }
  }
}
