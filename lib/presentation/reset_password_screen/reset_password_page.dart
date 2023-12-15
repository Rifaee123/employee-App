import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/core/utils/validation_functions.dart';
import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';
import 'package:muhammad_s_application3/presentation/reset_password_screen/controller/reset_password_controller.dart';
import 'package:muhammad_s_application3/widgets/custom_elevated_button.dart';
import 'package:muhammad_s_application3/widgets/custom_image_view.dart';
import 'package:muhammad_s_application3/widgets/custom_text_form_field.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ResetPasswordController controller = Get.put(ResetPasswordController());
  LoginController loginController = Get.put(LoginController());
  bool isVisible = true;
  bool isVisible1 = true;
  @override
  Widget build(BuildContext context) {
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
                            'Reset \nPassword',
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
                    height: 420.h,
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
                            'Password',
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomTextFormField(
                            controller: controller.passwordController,
                            hintText: 'Enter Old Password',
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
                            'New Password',
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomTextFormField(
                            suffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible == false
                                        ? isVisible = true
                                        : isVisible = false;
                                  });
                                },
                                icon: Icon(Icons.remove_red_eye)),
                            controller: controller.newPasswordController,
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
                            obscureText: isVisible,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text(
                            'ReEnter Password',
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomTextFormField(
                            suffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible1 == false
                                        ? isVisible1 = true
                                        : isVisible1 = false;
                                  });
                                },
                                icon: Icon(Icons.remove_red_eye)),
                            controller: controller.conPasswordController,
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
                            obscureText: isVisible1,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        CustomElevatedButton(
                          onPressed: () async {
                            if (controller.newPasswordController.text !=
                                controller.conPasswordController.text) {
                              Get.showSnackbar(GetSnackBar(
                                duration: Duration(milliseconds: 1000),
                                animationDuration: Duration(milliseconds: 300),
                                title: 'password Not Same',
                                message: 'ReEnter Password',
                                backgroundColor:
                                    Color.fromARGB(179, 249, 108, 108),
                              ));
                            } else {
                              controller.resetPassword(
                                  newPassword: controller
                                      .newPasswordController.text
                                      .trim(),
                                  oldPassword: controller
                                      .passwordController.text
                                      .trim());
                            }
                          },
                          height: 41.v,
                          width: 147.h,
                          text: 'Reset',
                          buttonStyle: CustomButtonStyles.fillPurple,
                          buttonTextStyle: CustomTextStyles.bodyLargeOnError,
                          alignment: Alignment.center,
                        ),

                        // Obx(() => loginController.isLoading.value
                        //     ? CircularProgressIndicator()
                        // : CustomElevatedButton(
                        //     onPressed: () async {
                        //       await controller.login(
                        //           phone: controller
                        //               .userNameController.value.text
                        //               .trim(),
                        //           password: controller
                        //               .passwordController.value.text
                        //               .trim());
                        //       // Navigator.of(context).push(MaterialPageRoute(
                        //       //   builder: (context) =>
                        //       //       ProfilebankpageTabContainerScreen1(),
                        //       // ));
                        //     },
                        //     height: 41.v,
                        //     width: 147.h,
                        //     text: "lbl_login".tr,
                        //     buttonStyle: CustomButtonStyles.fillPurple,
                        //     buttonTextStyle:
                        //         CustomTextStyles.bodyLargeOnError,
                        //     alignment: Alignment.center,
                        //   )),
                        SizedBox(height: 13.v),
                        // Align(
                        //   alignment: Alignment.centerRight,
                        //   child: Padding(
                        //     padding: EdgeInsets.only(
                        //       left: 27.h,
                        //       right: 13.h,
                        //     ),
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Padding(
                        //           padding: EdgeInsets.only(top: 4.v),
                        //           child: Text(
                        //             "Do not reset",
                        //             style: CustomTextStyles.bodyMediumGray600,
                        //           ),
                        //         ),
                        //         Padding(
                        //           padding: EdgeInsets.only(left: 5.h),
                        //           child: InkWell(
                        //             onTap: () {
                        //               Get.offNamed(AppRoutes.loginscreenScreen);
                        //             },
                        //             child: Text(
                        //               'Login',
                        //               style:
                        //                   CustomTextStyles.titleMediumPurple400,
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
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
