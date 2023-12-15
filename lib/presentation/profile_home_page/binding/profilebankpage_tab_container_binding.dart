import '../controller/profilebankpage_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilebankpageTabContainerScreen.
///
/// This class ensures that the ProfilebankpageTabContainerController is created when the
/// ProfilebankpageTabContainerScreen is first loaded.
class ProfilebankpageTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilebankpageTabContainerController());
  }
}
