import '../controller/loginscreen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginscreenScreen.
///
/// This class ensures that the LoginscreenController is created when the
/// LoginscreenScreen is first loaded.
class LoginscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginscreenController());
  }
}
