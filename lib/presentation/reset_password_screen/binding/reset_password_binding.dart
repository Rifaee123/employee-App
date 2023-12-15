import 'package:get/get.dart';
import 'package:muhammad_s_application3/presentation/reset_password_screen/controller/reset_password_controller.dart';

class ResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordController());
  }
}
