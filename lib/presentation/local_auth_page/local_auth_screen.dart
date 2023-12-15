import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/core/utils/validation_functions.dart';
import 'package:muhammad_s_application3/presentation/local_auth_page/controller/local_auth_controller.dart';
import 'package:muhammad_s_application3/widgets/custom_elevated_button.dart';
import 'package:muhammad_s_application3/widgets/custom_image_view.dart';
import 'package:muhammad_s_application3/widgets/custom_text_form_field.dart';

class LocalAuthScreen extends StatefulWidget {
  const LocalAuthScreen({Key? key}) : super(key: key);

  @override
  State<LocalAuthScreen> createState() => _LocalAuthScreenState();
}

class _LocalAuthScreenState extends State<LocalAuthScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LocalAuthController controller = Get.put(LocalAuthController());
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
                    padding: EdgeInsets.symmetric(horizontal: 35.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 181.h,
                          margin: EdgeInsets.only(top: 116.v),
                          child: Text(
                            'Local \nAuthentication',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.headlineSmallVigaOnPrimary,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCyenosure0611,
                          height: 119.v,
                          width: 97.h,
                          margin: EdgeInsets.only(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Container(
                    width: 270.h,
                    height: 328.v,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 170.v,
                          child: Image.asset(
                              'assets/images/kit-face-id-authentication-on-smartphone.gif'),
                        ),
                        SizedBox(
                          height: 70.v,
                          child: Image.asset('assets/images/Fingerprint.png'),
                        )
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
