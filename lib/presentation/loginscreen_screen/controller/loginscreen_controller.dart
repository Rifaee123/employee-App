import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';

import 'package:muhammad_s_application3/presentation/loginscreen_screen/models/loginscreen_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/presentation/splashscreen_screen/controller/splashscreen_controller.dart';

/// A controller class for the LoginscreenScreen.
///
/// This class manages the state of the LoginscreenScreen, including the
/// current loginscreenModelObj
class LoginscreenController extends GetxController {
  final _storage = const FlutterSecureStorage();
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginscreenModel> loginscreenModelObj = LoginscreenModel().obs;

  GetxController controller = Get.put(SplashscreenController());
  final LocalAuthentication auth = LocalAuthentication();
  final LoginController loginController = Get.put(LoginController());

  var isUserAuthenticated = false.obs;
//  Rx <Login> data = Login().obs;
  Future<void> login({required String phone, required String password}) async {
    try {
      await loginController.loginUser(phone: phone, password: password);

      if (loginController.loginResponse.value.success == true) {
        _saveLoginTime();
        // Navigate to the next screen or perform any necessary actions
        await Future.delayed(Duration(milliseconds: 300))
            .then((value) => Get.offNamed(
                  AppRoutes.profilebankpageTabContainerScreen,
                ));
      }
    } finally {}
  }

  Future<void> _saveLoginTime() async {
    _storage.write(
        key: 'loginTimeKey',
        value: DateTime.now().millisecondsSinceEpoch.toString());
  }

  void getToken() async {
    final String? token = await loginController.getAuthToken();
    final String? userid = await loginController.getUserId();
    print(token);
    print(userid);
    if (token != null) {}
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getToken();
  }

  // @override
  // void onReady() {
  //   // TODO: implement onReady
  //   super.onReady();
  //   if (isUserAuthenticated.value) {
  //     Get.offNamed(
  //       AppRoutes.profilebankpageTabContainerScreen,
  //     );
  //   }
  // }

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
// final LocalAuthentication _localAuthentication = LocalAuthentication();

// String msg = "You are not authorized.";
// Future<void> _authenticate() async {
//   bool authenticated = false;
//   try {
//     bool hasbiometrics =
//         await auth.canCheckBiometrics; //check if there is authencations,

//     if (hasbiometrics) {
//       List<BiometricType> availableBiometrics =
//           await auth.getAvailableBiometrics();
//       if (Platform.isIOS) {
//         if (availableBiometrics.contains(BiometricType.face)) {
//           bool pass = await auth.authenticate(
//               localizedReason: 'Authenticate with fingerprint',
//               options: AuthenticationOptions(biometricOnly: true));

//           if (pass) {
//             msg = "You are Autenciated.";
//           }
//         }
//       } else {
//         if (availableBiometrics.contains(BiometricType.fingerprint)) {
//           bool pass = await auth.authenticate(
//               localizedReason: 'Authenticate with fingerprint/face',
//               options: AuthenticationOptions(biometricOnly: true));
//           if (pass) {
//             msg = "You are Authenicated.";
//           }
//         }
//       }
//     } else {
//       msg = "You are not alowed to access biometrics.";
//     }
//   } on PlatformException catch (e) {
//     msg = "Error while opening fingerprint/face scanner";
//   }
// try {
//   authenticated = await _localAuthentication.authenticate(
//       localizedReason: 'Authenticate to access your account',
//       options: AuthenticationOptions(
//         useErrorDialogs: true,
//         stickyAuth: true,
//         biometricOnly: true,
//       ));
// } catch (e) {
//   print('Error during authentication: $e');
// }

// if (authenticated) {
//   // Authentication successful, navigate to the home screen or perform other actions
//   print('Authentication successful');
// } else {
//   // Authentication failed
//   print('Authentication failed');
// }
// }

//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     _authenticate();
//   }

// }
