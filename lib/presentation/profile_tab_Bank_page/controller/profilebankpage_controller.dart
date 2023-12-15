import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/presentation/profile_tab_Bank_page/models/profilebankpage_model.dart';

/// A controller class for the ProfilebankpagePage.
///
/// This class manages the state of the ProfilebankpagePage, including the
/// current profilebankpageModelObj
class ProfilebankpageController extends GetxController {
  ProfilebankpageController(this.profilebankpageModelObj);

  Rx<ProfilebankpageModel> profilebankpageModelObj;
}
