import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';
import 'package:muhammad_s_application3/presentation/profile_home_page/profile_home_page.dart';

import 'controller/loginscreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/core/utils/validation_functions.dart';
import 'package:muhammad_s_application3/widgets/custom_elevated_button.dart';
import 'package:muhammad_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginscreenScreen extends GetWidget<LoginscreenController> {
  LoginscreenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 111.h,
                          margin: EdgeInsets.only(top: 116.v),
                          child: Text(
                            "lbl_employee_login".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.headlineSmallVigaOnPrimary,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCyenosure0611,
                          height: 119.v,
                          width: 97.h,
                          margin: EdgeInsets.only(
                            left: 61.h,
                            bottom: 68.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 45.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 19.h,
                      vertical: 22.v,
                    ),
                    decoration: AppDecoration.fillPurple.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text(
                            "lbl_user_name".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomTextFormField(
                            controller: controller.userNameController,
                            hintText: "lbl_enter_user_name".tr,
                            validator: (value) {
                              if (!isText(value)) {
                                return "err_msg_please_enter_valid_text".tr;
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text(
                            "lbl_password".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomTextFormField(
                            controller: controller.passwordController,
                            hintText: "lbl_enter_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        Obx(() => loginController.isLoading.value
                            ? Center(child: CircularProgressIndicator())
                            : CustomElevatedButton(
                                onPressed: () async {
                                  await controller.login(
                                      phone: controller
                                          .userNameController.value.text
                                          .trim(),
                                      password: controller
                                          .passwordController.value.text
                                          .trim());
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //   builder: (context) =>
                                  //       ProfilebankpageTabContainerScreen1(),
                                  // ));
                                },
                                height: 41.v,
                                width: 147.h,
                                text: "lbl_login".tr,
                                buttonStyle: CustomButtonStyles.fillPurple,
                                buttonTextStyle:
                                    CustomTextStyles.bodyLargeOnError,
                                alignment: Alignment.center,
                              )),
                        SizedBox(height: 15.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: Text(
                                  'Forgot Your',
                                  style: CustomTextStyles.bodyMediumGray600,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: InkWell(
                                  onTap: () {
                                    Get.offNamed(
                                        AppRoutes.forgotOtpVerificationPage);
                                  },
                                  child: Text(
                                    "lbl_password".tr,
                                    style:
                                        CustomTextStyles.titleMediumPurple400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  CustomImageView(
                    imagePath: 'assets/images/Bottemimage.png',
                    height: 250.v,
                    width: 264.h,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
