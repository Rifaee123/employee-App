import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';

import 'controller/profileinfopage_controller.dart';
import 'models/profileinfopage_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/widgets/custom_icon_button.dart';

class ProfileinfopagePage extends StatelessWidget {
  ProfileinfopagePage({Key? key})
      : super(
          key: key,
        );

  ProfileinfopageController controller =
      Get.put(ProfileinfopageController(ProfileinfopageModel().obs));
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildProfileInfo(),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileInfo() {
    return Column(
      children: [
        SizedBox(height: 21.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              // right: 99.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_profile_info".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(right: 55.h),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup41,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 6.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          loginController.fetchdata.value.data!.phone
                              // loginController.loginResponse.value.data!.phone
                              .toString(),
                          style: CustomTextStyles.titleMediumGray60001,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(right: 29.h),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup40,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 9.v,
                        ),
                        child: Text(
                          loginController.fetchdata.value.data!.email
                              // loginController.loginResponse.value.data!.email
                              .toString(),
                          style: CustomTextStyles.titleMediumGray60001,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      margin: EdgeInsets.only(bottom: 70.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgHomeAddress,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 183.h,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          top: 7.v,
                        ),
                        child: Text(
                          loginController.fetchdata.value.data!.address
                              // loginController.loginResponse.value.data!.address
                              .toString(),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleMediumGray60002,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    CustomIconButton(
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup169,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 10.v,
                      ),
                      child: Text(
                        loginController.fetchdata.value.data!.dateOfBirth
                            // loginController.loginResponse.value.data!.dateOfBirth
                            .toString(),
                        style: CustomTextStyles.titleMediumGray60001,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          "lbl_upadate_your".tr,
                          style: CustomTextStyles.bodyMediumGray600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: InkWell(
                          onTap: () {
                            Get.offNamed(AppRoutes.resetPasswordPage);
                          },
                          child: Text(
                            "lbl_password".tr,
                            style: CustomTextStyles.titleMediumPurple400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
