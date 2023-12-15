import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:muhammad_s_application3/core/app_export.dart';

class LocalAuthController extends GetxController {
  var isUserAuthenticated = false.obs;
  final LocalAuthentication auth = LocalAuthentication();

  void authenticateUser() async {
    try {
      isUserAuthenticated.value = await auth.authenticate(
        localizedReason: "Login With BioMetrics",
        options: AuthenticationOptions(
            biometricOnly: true,
            stickyAuth: true,
            sensitiveTransaction: true,
            useErrorDialogs: true),
      );
      if (isUserAuthenticated.value) {
        showSnackBar(
            title: 'Success',
            message: "FingerPrint Verification Success",
            backgroundColor: Color.fromARGB(39, 0, 190, 6));
        Future.delayed(const Duration(milliseconds: 1000), () {
          Get.offNamed(
            AppRoutes.profilebankpageTabContainerScreen,
          );
        });
      } else {
        showSnackBar(
            title: 'Failed',
            message: "FingerPrint Verification Failed",
            backgroundColor: Colors.red);
      }
    } catch (e) {
      print("error $e");
      showSnackBar(
          title: "Error", message: e.toString(), backgroundColor: Colors.red);
    }
  }

  void showSnackBar(
      {required String title,
      required String message,
      required Color backgroundColor}) {
    Get.snackbar(title, message, backgroundColor: backgroundColor);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    authenticateUser();
  }
}
