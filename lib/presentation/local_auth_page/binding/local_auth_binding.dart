import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/presentation/local_auth_page/controller/local_auth_controller.dart';

class LocalAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocalAuthController());
  }
}
