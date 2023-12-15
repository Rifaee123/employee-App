import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/data/apiClient/forgot_password/email_verification/email_verification.dart';

class OtpVerificationController extends GetxController {
  final RxString emailValue = ''.obs;
  final ForgotPasswordOtpController otpcontroller =
      ForgotPasswordOtpController();
  final Rx<TextEditingController> emailController = TextEditingController().obs;
  Future<void> sendOtp({required String email}) async {
    await otpcontroller.forgotPassword(email);
  }
}
