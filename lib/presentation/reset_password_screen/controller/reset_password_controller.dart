import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';
import 'package:muhammad_s_application3/data/apiClient/reset_password_api/reset_password_api.dart';

class ResetPasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController newPasswordController = TextEditingController();
  TextEditingController conPasswordController = TextEditingController();
  ResetPasswordApiController apicontroller =
      Get.put(ResetPasswordApiController());
  LoginController loginController = Get.put(LoginController());

  Future<void> resetPassword(
      {required String newPassword, required String oldPassword}) async {
    final String? userid = await loginController.getUserId();
    apicontroller
        .resetPassword(userid.toString(), newPassword, oldPassword)
        .then((value) {
      if (apicontroller.isPasswordUpdated.value == true) {
        Get.snackbar('Success', 'Password Updated Successfully',
            colorText: Colors.white,
            backgroundColor: Color.fromARGB(255, 76, 175, 76));
        Get.offNamed(AppRoutes.profilebankpageTabContainerScreen);
      }
    });
  }
}
