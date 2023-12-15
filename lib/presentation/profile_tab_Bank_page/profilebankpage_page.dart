import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';
import 'controller/profilebankpage_controller.dart';
import 'models/profilebankpage_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';

class ProfilebankpagePage extends StatelessWidget {
  ProfilebankpagePage({Key? key})
      : super(
          key: key,
        );

  ProfilebankpageController controller =
      Get.put(ProfilebankpageController(ProfilebankpageModel().obs));
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          // width: double.maxFinite,
          decoration: AppDecoration.fillOnError,
          child: Column(
            children: [
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 28.h,
                    // right: 154.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_bank_details".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(right: 29.h),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "lbl_bank".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                loginController.fetchdata.value.data!.bank
                                    .toString(),
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Row(
                        children: [
                          Text(
                            "lbl_acc_no".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              loginController
                                  .fetchdata.value.data!.accountNumber
                                  .toString(),
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.v),
                      Padding(
                        padding: EdgeInsets.only(right: 45.h),
                        child: Row(
                          children: [
                            Text(
                              "lbl_ifse_no".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                loginController.fetchdata.value.data!.bank
                                    .toString(),
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Padding(
                        padding: EdgeInsets.only(right: 11.h),
                        child: _buildPanNoRow(
                          panNo: "lbl_branch".tr,
                          oops: loginController.fetchdata.value.data!.branch
                              .toString(),
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Padding(
                        padding: EdgeInsets.only(right: 11.h),
                        child: _buildPanNoRow(
                          panNo: "lbl_pan_no".tr,
                          oops: loginController.fetchdata.value.data!.panNo
                              .toString(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPanNoRow({
    required String panNo,
    required String oops,
  }) {
    return Row(
      children: [
        Text(
          panNo,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray60003,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            oops,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray60003,
            ),
          ),
        ),
      ],
    );
  }
}
