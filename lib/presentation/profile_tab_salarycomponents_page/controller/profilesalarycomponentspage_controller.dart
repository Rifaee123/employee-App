import 'dart:developer';

import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';
import 'package:muhammad_s_application3/presentation/profile_tab_salarycomponents_page/models/profilesalarycomponentspage_model.dart';

/// A controller class for the ProfilesalarycomponentspagePage.
///
/// This class manages the state of the ProfilesalarycomponentspagePage, including the
/// current profilesalarycomponentspageModelObj
class ProfilesalarycomponentspageController extends GetxController {
  ProfilesalarycomponentspageController(
      this.profilesalarycomponentspageModelObj);
  final LoginController loginController = Get.put(LoginController());
  Rx<ProfilesalarycomponentspageModel> profilesalarycomponentspageModelObj;
  void isEXpand({required int index}) {
    log("${loginController.fetchdata.value.data!.tablerow![index].isExpand}");
    log("id: ${loginController.fetchdata.value.data!.tablerow![index].id}");
    if (loginController.fetchdata.value.data!.tablerow![index].id ==
        index + 1) {
      loginController.fetchdata.value.data!.tablerow![index].isExpand.value ==
              false
          ? loginController
              .fetchdata.value.data!.tablerow![index].isExpand.value = true
          : loginController
              .fetchdata.value.data!.tablerow![index].isExpand.value = false;
      update();
    } else {}
  }

  RxBool isExpanded = false.obs;
}
