import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/presentation/forgot_password_screen/controller/otp_verification_controller.dart';
import 'package:muhammad_s_application3/widgets/custom_elevated_button.dart';
import 'package:muhammad_s_application3/widgets/custom_text_form_field.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  OtpVerificationController otpverController =
      Get.put(OtpVerificationController());
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.text = otpverController.emailValue.value;
    log(emailController.text);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
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
                            'Forgot \nPassword',
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
                            "Email Id",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomTextFormField(
                            controller: emailController,
                            hintText: "Enter Your Email",
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text(
                            "Otp",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomTextFormField(
                            controller: otpController,
                            hintText: "Enter Otp",
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text(
                            "Password",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomTextFormField(
                            controller: passController,
                            hintText: "New Password Otp",
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text(
                            "Confirm Password",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomTextFormField(
                            controller: confirmController,
                            hintText: "Confirm Password Otp",
                          ),
                        ),
                        SizedBox(height: 25.v),
                        CustomElevatedButton(
                          onPressed: () async {},
                          height: 41.v,
                          width: 177.h,
                          text: "Reset Password",
                          buttonStyle: CustomButtonStyles.fillPurple,
                          buttonTextStyle: CustomTextStyles.bodyLargeOnError,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 15.v),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
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
