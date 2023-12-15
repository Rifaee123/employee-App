import 'controller/splashscreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      _buildEmployeeLoginSection(),
                      SizedBox(height: 70.v),
                      CustomImageView(
                          imagePath: 'assets/images/Bottemimage.png',
                          height: 236.v,
                          width: 264.h)
                    ]))));
  }

  /// Section Widget
  Widget _buildEmployeeLoginSection() {
    return Container(
        height: 311.adaptSize,
        width: 311.adaptSize,
        margin: EdgeInsets.only(left: 19.h),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCyenosure0611,
              height: 311.adaptSize,
              width: 311.adaptSize,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 79.v),
                  child: Text("lbl_employee_login".tr,
                      style: CustomTextStyles.headlineSmallVigaOnPrimary)))
        ]));
  }
}
