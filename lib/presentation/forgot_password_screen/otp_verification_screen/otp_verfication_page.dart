import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/data/apiClient/forgot_password/email_verification/email_verification.dart';
import 'package:muhammad_s_application3/presentation/forgot_password_screen/controller/otp_verification_controller.dart';
import 'package:muhammad_s_application3/widgets/custom_elevated_button.dart';
import 'package:muhammad_s_application3/widgets/custom_image_view.dart';
import 'package:muhammad_s_application3/widgets/custom_text_form_field.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({Key? key}) : super(key: key);

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  OtpVerificationController otpController =
      Get.put(OtpVerificationController());
  ForgotPasswordOtpController verifyController = ForgotPasswordOtpController();

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
                  SizedBox(height: 55.v),
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
                            'Otp \nVerification',
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
                            onChanged: (value) {
                              otpController.emailValue.value = value;
                              log(otpController.emailValue.value);
                            },
                            controller: otpController.emailController.value,
                            hintText: "Enter Your Email",
                          ),
                        ),
                        SizedBox(height: 10.v),
                        SizedBox(height: 25.v),
                        CustomElevatedButton(
                          onPressed: () async {
                            await otpController
                                .sendOtp(
                                    email: otpController
                                        .emailController.value.text
                                        .trim())
                                .then((value) {
                              Get.offNamed(AppRoutes.forgotPasswordPage);
                            });
                          },
                          height: 41.v,
                          width: 147.h,
                          text: "Send Otp",
                          buttonStyle: CustomButtonStyles.fillPurple,
                          buttonTextStyle: CustomTextStyles.bodyLargeOnError,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 15.v),
                      ],
                    ),
                  ),
                  SizedBox(height: 108.v),
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
