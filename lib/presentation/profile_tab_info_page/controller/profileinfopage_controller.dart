import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/presentation/profile_tab_info_page/models/profileinfopage_model.dart';

/// A controller class for the ProfileinfopagePage.
///
/// This class manages the state of the ProfileinfopagePage, including the
/// current profileinfopageModelObj
class ProfileinfopageController extends GetxController {
  ProfileinfopageController(this.profileinfopageModelObj);

  Rx<ProfileinfopageModel> profileinfopageModelObj;
}
