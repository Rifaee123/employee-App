import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/data/apiClient/forgot_password/reset_password/forgot_password.dart';

class ForgotPasswordpageController extends GetxController {
  ForgotPasswordController forgotcontroller =
      Get.put(ForgotPasswordController());

  Future<void> forgotPassword(
      {required String email,
      required String otp,
      required String newPassword}) async {
    forgotcontroller.changePassword(email, otp, newPassword);
  }
}
