import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';
import 'package:muhammad_s_application3/presentation/splashscreen_screen/models/splashscreen_model.dart';
import 'package:jwt_decode/jwt_decode.dart';

/// A controller class for the SplashscreenScreen.
///
/// This class manages the state of the SplashscreenScreen, including the
/// current splashscreenModelObj
class SplashscreenController extends GetxController {
  LoginController logincontroller = Get.put(LoginController());
  Rx<SplashscreenModel> splashscreenModelObj = SplashscreenModel().obs;
  final LocalAuthentication auth = LocalAuthentication();
  var hasFingerPrintLock = false.obs;
  var hasFaceLock = false.obs;
  var isUserAuthenticated = false.obs;

  void getallBiometrics() async {
    bool hasLocalAuthentication = await auth.canCheckBiometrics;
    if (hasLocalAuthentication) {
      List<BiometricType> availableBiometrics =
          await auth.getAvailableBiometrics();
      print(availableBiometrics);
      hasFaceLock.value = availableBiometrics.contains(BiometricType.face);
      hasFingerPrintLock.value =
          availableBiometrics.contains(BiometricType.fingerprint);
    } else {
      print('no biometrics');
      showSnackBar(
          title: 'Error',
          message: "Local Authenticate Not Working",
          backgroundColor: Colors.red);
    }
  }

  void showSnackBar(
      {required String title,
      required String message,
      required Color backgroundColor}) {
    Get.snackbar(title, message, backgroundColor: backgroundColor);
  }

  DateTime? getJwtExpiration(String jwtToken) {
    try {
      // Decode the JWT token
      Map<String, dynamic> decodedToken = Jwt.parseJwt(jwtToken);

      // Extract the expiration time from the payload
      if (decodedToken.containsKey('exp')) {
        int expirationTimestamp =
            decodedToken['exp'] * 1000; // Convert to milliseconds
        return DateTime.fromMillisecondsSinceEpoch(expirationTimestamp);
      } else {
        // 'exp' claim not found in the JWT payload
        print('JWT does not contain expiration time (exp claim).');
        return null;
      }
    } catch (e) {
      // Handle decoding errors
      print('Error decoding JWT: $e');
      return null;
    }
  }

  void getToken() async {
    final String? token = await logincontroller.getAuthToken();
    final String? userid = await logincontroller.getUserId();

    print(token);
    print(userid);

    if (token != null) {
      DateTime? expirationTime = getJwtExpiration(token.toString());

      if (expirationTime != null) {
        print('JWT Expiration Time: $expirationTime');

        // Check if the token is expired
        if (expirationTime.isAfter(DateTime.now())) {
          print('JWT is still valid.');
          Future.delayed(const Duration(milliseconds: 3000), () {
            Get.offNamed(
              AppRoutes.localAuthPage,
            );
          });
          getallBiometrics();
        } else {
          print('JWT has expired.');
          Future.delayed(const Duration(milliseconds: 3000), () {
            Get.offNamed(
              AppRoutes.loginscreenScreen,
            );
          });
        }
      }
    } else {
      Future.delayed(const Duration(milliseconds: 3000), () {
        Get.offNamed(
          AppRoutes.loginscreenScreen,
        );
      });
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getToken();
  }

  // @override
  // void onReady() {

  // }
}
