import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:muhammad_s_application3/data/models/reset_password_response/reset_password_response.dart';

class ResetPasswordApiController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isPasswordUpdated = false.obs;

  Future<void> resetPassword(
      String userId, String newPassword, String oldPassword) async {
    try {
      isLoading(true);

      final response = await http.post(
        Uri.parse(
            'https://marketfed.cyenosure.in/api/userlogin/updatepassword/$userId'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'newpassword': newPassword,
          'oldpassword': oldPassword,
        }),
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        ResetPasswordResponse resetPasswordResponse =
            ResetPasswordResponse.fromJson(jsonResponse);

        isPasswordUpdated(true);

        print('Success: ${resetPasswordResponse.success}');
        print('Message: ${resetPasswordResponse.message}');
      } else {
        final jsonResponse = json.decode(response.body);
        Get.snackbar('Error', jsonResponse['message']);
        print('Error: ${response.reasonPhrase}');
      }
    } catch (error) {
      Get.snackbar('Error', 'An error occurred: $error');

      print('Error: $error');
    } finally {
      isLoading(false);
    }
  }
}
