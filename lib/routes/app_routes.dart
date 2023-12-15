import 'package:muhammad_s_application3/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:muhammad_s_application3/presentation/forgot_password_screen/controller/otp_verification_controller.dart';
import 'package:muhammad_s_application3/presentation/forgot_password_screen/forgot_password/forgot_password_page.dart';
import 'package:muhammad_s_application3/presentation/forgot_password_screen/otp_verification_screen/otp_verfication_page.dart';
import 'package:muhammad_s_application3/presentation/local_auth_page/binding/local_auth_binding.dart';
import 'package:muhammad_s_application3/presentation/local_auth_page/local_auth_screen.dart';
import 'package:muhammad_s_application3/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:muhammad_s_application3/presentation/reset_password_screen/reset_password_page.dart';
import 'package:muhammad_s_application3/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:muhammad_s_application3/presentation/splashscreen_screen/binding/splashscreen_binding.dart';
import 'package:muhammad_s_application3/presentation/loginscreen_screen/loginscreen_screen.dart';
import 'package:muhammad_s_application3/presentation/loginscreen_screen/binding/loginscreen_binding.dart';
import 'package:muhammad_s_application3/presentation/profile_home_page/profile_home_page.dart';
import 'package:muhammad_s_application3/presentation/profile_home_page/binding/profilebankpage_tab_container_binding.dart';
import 'package:muhammad_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:muhammad_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String loginscreenScreen = '/loginscreen_screen';

  static const String profileinfopagePage = '/profileinfopage_page';

  static const String profilebankpagePage = '/profilebankpage_page';

  static const String profilebankpageTabContainerScreen =
      '/profilebankpage_tab_container_screen';

  static const String profilesalarypageScreen = '/profilesalarypage_screen';

  static const String profilesalarycomponentspagePage =
      '/profilesalarycomponentspage_page';

  static const String profilesalarycomponentspageTabContainerScreen =
      '/profilesalarycomponentspage_tab_container_screen';

  static const String profileimagepickerpagePage =
      '/profileimagepickerpage_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';
  static const String localAuthPage = '/Local_auth_Screen';
  static const String resetPasswordPage = '/reset_password_screen';
  static const String forgotOtpVerificationPage = '/forgot_password_screen';
  static const String forgotPasswordPage = '/forgot_password_page';
  OtpVerificationController otpverController =
      Get.put(OtpVerificationController());
  static List<GetPage> pages = [
    GetPage(
      name: forgotPasswordPage,
      page: () => ForgotPasswordPage(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: forgotOtpVerificationPage,
      page: () => OtpVerificationPage(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),

    GetPage(
      name: resetPasswordPage,
      page: () => ResetPasswordPage(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: localAuthPage,
      page: () => LocalAuthScreen(),
      bindings: [
        LocalAuthBinding(),
      ],
    ),
    GetPage(
      name: splashscreenScreen,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    ),
    GetPage(
      name: loginscreenScreen,
      page: () => LoginscreenScreen(),
      bindings: [
        LoginscreenBinding(),
      ],
    ),
    GetPage(
      name: profilebankpageTabContainerScreen,
      page: () => ProfilebankpageTabContainerScreen1(),
      bindings: [
        ProfilebankpageTabContainerBinding(),
      ],
    ),

    // GetPage(
    //   name: profilesalarycomponentspageTabContainerScreen,
    //   page: () => profilesalarycomponentspageTabContainerScreen(),
    //   bindings: [
    //     ProfilesalarycomponentspageTabContainerBinding(),
    //   ],
    // ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    )
  ];
}
