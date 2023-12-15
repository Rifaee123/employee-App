import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:muhammad_s_application3/data/apiClient/image_upload_api/image_upload_api.dart';
import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';
import 'package:muhammad_s_application3/presentation/loginscreen_screen/loginscreen_screen.dart';
import 'package:muhammad_s_application3/presentation/profile_tab_info_page/profileinfopage_page.dart';
import 'package:muhammad_s_application3/presentation/profile_tab_salarycomponents_page/profilesalarycomponentspage_page.dart';
import 'package:muhammad_s_application3/presentation/salary_slip_page.dart/salary_slip_page.dart';

import 'controller/profilebankpage_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/presentation/profile_tab_Bank_page/profilebankpage_page.dart';
import 'package:muhammad_s_application3/widgets/custom_elevated_button.dart';
import 'package:muhammad_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
// class ProfilebankpageTabContainerScreen
//     extends GetWidget<ProfilebankpageTabContainerController> {
//   const ProfilebankpageTabContainerScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);

//     return SafeArea(
//       child: Scaffold(
//         body: SizedBox(
//           width: double.maxFinite,
//           child: Column(
//             children: [
//               _buildProfileBankPageStack(),
//               SizedBox(height: 12.v),
//               SizedBox(
//                 height: 59.v,
//                 width: 226.h,
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//                   children: [
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 24.h),
//                         child: Text(
//                           "msg_flutter_developer".tr,
//                           style: theme.textTheme.titleLarge,
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Text(
//                         "msg_employee_id_645678".tr,
//                         style: CustomTextStyles.titleLargePrimaryContainer,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 17.v),
//               _buildTabview(),
//               _buildTabBarViewPager(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildProfileBankPageStack() {
//     return SizedBox(
//       height: 388.v,
//       width: double.maxFinite,
//       child: Stack(
//         alignment: Alignment.bottomRight,
//         children: [
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: Container(
//               height: 155.v,
//               width: 103.h,
//               margin: EdgeInsets.only(
//                 left: 44.h,
//                 bottom: 49.v,
//               ),
//               decoration: BoxDecoration(
//                 color: appTheme.lightBlue300,
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomRight,
//             child: Container(
//               height: 155.v,
//               width: 103.h,
//               margin: EdgeInsets.only(
//                 right: 39.h,
//                 bottom: 42.v,
//               ),
//               decoration: BoxDecoration(
//                 color: appTheme.lightBlue300,
//               ),
//             ),
//           ),
//           CustomImageView(
//             imagePath: ImageConstant.imgRectangle109,
//             height: 151.v,
//             width: 159.h,
//             alignment: Alignment.bottomCenter,
//             margin: EdgeInsets.only(bottom: 69.v),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               right: 94.h,
//               bottom: 69.v,
//             ),
//             child: CustomIconButton(
//               height: 31.adaptSize,
//               width: 31.adaptSize,
//               padding: EdgeInsets.all(5.h),
//               decoration: IconButtonStyleHelper.fillLightBlue,
//               alignment: Alignment.bottomRight,
//               child: CustomImageView(
//                 imagePath: ImageConstant.imgGroup4,
//               ),
//             ),
//           ),
//           CustomElevatedButton(
//             width: 322.h,
//             text: "msg_muhammed_rifaee".tr,
//             alignment: Alignment.bottomCenter,
//           ),
//           Align(
//             alignment: Alignment.topCenter,
//             child: Padding(
//               padding: EdgeInsets.only(top: 59.v),
//               child: Text(
//                 "lbl_profile".tr,
//                 style: theme.textTheme.headlineSmall,
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               height: 225.v,
//               width: 164.h,
//               padding: EdgeInsets.symmetric(
//                 horizontal: 13.h,
//                 vertical: 60.v,
//               ),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadiusStyle.customBorderTL162,
//                 image: DecorationImage(
//                   image: AssetImage(
//                     ImageConstant.imgGroup6,
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: CustomImageView(
//                 imagePath: ImageConstant.imgNotification,
//                 height: 37.adaptSize,
//                 width: 37.adaptSize,
//                 alignment: Alignment.topRight,
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topLeft,
//             child: Container(
//               height: 222.v,
//               width: 157.h,
//               padding: EdgeInsets.only(
//                 left: 11.h,
//                 top: 61.v,
//                 right: 11.h,
//               ),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadiusStyle.customBorderTL140,
//                 image: DecorationImage(
//                   image: AssetImage(
//                     ImageConstant.imgGroup5,
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: CustomImageView(
//                 imagePath: ImageConstant.imgLeft,
//                 height: 37.adaptSize,
//                 width: 37.adaptSize,
//                 alignment: Alignment.topLeft,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildTabview() {
//     return Container(
//       height: 71.v,
//       width: 330.h,
//       decoration: BoxDecoration(
//         color: theme.colorScheme.onError,
//         borderRadius: BorderRadius.circular(
//           20.h,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: theme.colorScheme.primary,
//             spreadRadius: 2.h,
//             blurRadius: 2.h,
//             offset: Offset(
//               0,
//               4,
//             ),
//           ),
//         ],
//       ),
//       child: TabBar(
//         controller: controller.tabviewController,
//         labelPadding: EdgeInsets.zero,
//         labelColor: theme.colorScheme.onError,
//         labelStyle: TextStyle(
//           fontSize: 16.fSize,
//           fontFamily: 'Poppins',
//           fontWeight: FontWeight.w500,
//         ),
//         unselectedLabelColor: appTheme.lightBlue300,
//         unselectedLabelStyle: TextStyle(
//           fontSize: 16.fSize,
//           fontFamily: 'Poppins',
//           fontWeight: FontWeight.w500,
//         ),
//         indicator: BoxDecoration(
//           color: appTheme.lightBlue300,
//           borderRadius: BorderRadius.circular(
//             20.h,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: theme.colorScheme.primary,
//               spreadRadius: 2.h,
//               blurRadius: 2.h,
//               offset: Offset(
//                 0,
//                 4,
//               ),
//             ),
//           ],
//         ),
//         tabs: [
//           Tab(
//             child: Text(
//               "lbl_profile_info".tr,
//             ),
//           ),
//           Tab(
//             child: Text(
//               "lbl_bank_details".tr,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildTabBarViewPager() {
//     return SizedBox(
//       height: 252.v,
//       child: TabBarView(
//         controller: controller.tabviewController,
//         children: [
//           ProfilebankpagePage(),
//           ProfilebankpagePage(),
//         ],
//       ),
//     );
//   }
// }

class ProfilebankpageTabContainerScreen1 extends StatefulWidget {
  const ProfilebankpageTabContainerScreen1({Key? key}) : super(key: key);

  @override
  State<ProfilebankpageTabContainerScreen1> createState() =>
      _ProfilebankpageTabContainerScreen1State();
}

class _ProfilebankpageTabContainerScreen1State
    extends State<ProfilebankpageTabContainerScreen1>
    with TickerProviderStateMixin {
  final LoginController loginController = Get.put(LoginController());
  ImageUploadController imageuploadcontroller =
      Get.put(ImageUploadController());
  @override
  Widget build(BuildContext context) {
    final TabController tabcontroller = TabController(length: 3, vsync: this);
    mediaQueryData = MediaQuery.of(context);
    XFile? imagePath;
    final ProfilebankpageTabContainerController controller =
        Get.put(ProfilebankpageTabContainerController());

    return SafeArea(
      child: Scaffold(
        body: Obx(() => SingleChildScrollView(
              child: loginController.fetchdata.value.data == null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 400.v,
                        ),
                        Center(
                          child: Image.asset(
                              'assets/images/pablita-loading.gif',
                              height: 120.v),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        _buildProfileBankPageStack(imagePath),
                        SizedBox(height: 12.v),
                        SizedBox(
                          height: 59.v,
                          width: 226.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 30.v),
                                  child: Text(
                                    loginController
                                        .fetchdata.value.data!.department
                                        .toString(),
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "${loginController.fetchdata.value.data!.id}",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildTabview(tabcontroller),
                        SizedBox(height: 17.v),
                        _buildTabBarViewPager(tabcontroller),
                      ],
                    ),
            )),
      ),
    );
  }

  // Future<void> _openCamera(BuildContext context, XFile? imagePath) async {
  //   final picker = ImagePicker();
  //   final pickedImage = await picker.pickImage(source: ImageSource.camera);

  //   if (pickedImage != null) {
  //     setState(() {
  //       imagePath = pickedImage;
  //     });
  //     // Use the picked file (e.g., upload or display the image)
  //     print('Image from camera: ${imagePath!.path}');
  //   }
  // }

  // Future<void> _openGallery(BuildContext context, XFile? imagePath) async {
  //   final picker = ImagePicker();
  //   final pickedImage = await picker.pickImage(source: ImageSource.gallery);

  //   if (pickedImage != null) {
  //     setState(() {
  //       imagePath = pickedImage;
  //     });
  //     // Use the picked file (e.g., upload or display the image)
  //     print('Image from gallery: ${imagePath!.path}');
  //   }
  // }

  Widget _buildProfileBankPageStack(XFile? imagePath) {
    final ProfilebankpageTabContainerController controller =
        Get.put(ProfilebankpageTabContainerController());
    return SizedBox(
      height: 388.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 155.v,
              width: 103.h,
              margin: EdgeInsets.only(
                left: 44.h,
                bottom: 49.v,
              ),
              decoration: BoxDecoration(
                color: Color(0xff9356a0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 155.v,
              width: 103.h,
              margin: EdgeInsets.only(
                right: 44.h,
                bottom: 49.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.lightBlue300,
              ),
            ),
          ),
          Obx(() => loginController.fetchdata.value.data!.image == null
              ? CustomImageView(
                  imagePath: controller.imagePath.value == null
                      ? 'assets/images/Group 209.png'
                      : controller.imagePath.value!.path,
                  height: 161.v,
                  width: 159.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 69.v),
                )
              : Align(
                  alignment: Alignment.bottomCenter,
                  child: Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 5000),
                      curve: Curves.linear,
                      margin: EdgeInsets.only(bottom: 69.v),
                      height: 161.v,
                      width: 159.h,
                      decoration: BoxDecoration(),
                      child: controller.imagePath.value == null
                          ? Image.network(
                              loginController.fetchdata.value.data!.image
                                  .toString(),
                              fit: BoxFit.fill,
                            )
                          : Image.file(
                              File(controller.imagePath.value!.path),
                              fit: BoxFit.cover,
                            ))),
                )),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: const Color.fromARGB(0, 255, 193, 7),
                context: context,
                builder: (BuildContext context) {
                  return Obx(() => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                color: Color(0xff9356a0),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Select Image',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.fSize,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        controller.openCamera();
                                      },
                                      child: SizedBox(
                                          height: 60,
                                          child: Image.asset(
                                            'assets/images/cameraicone.png',
                                          )),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        controller.openGallery();
                                      },
                                      child: SizedBox(
                                          height: 60,
                                          child: Image.asset(
                                            'assets/images/galleryicone.png',
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.v,
                                ),
                                controller.imagePath.value != null
                                    ? Container(
                                        width: 160.v,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: imageuploadcontroller
                                                    .isLoading.value ==
                                                true
                                            ? Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              )
                                            : ElevatedButton(
                                                onPressed: () {
                                                  controller.uploadImage(
                                                      imageFile: File(controller
                                                          .imagePath
                                                          .value!
                                                          .path));
                                                },
                                                child: Text("Upload")),
                                      )
                                    : SizedBox()
                              ],
                            ),
                          )
                          // ListTile(
                          //   leading: Icon(Icons.camera),
                          //   title: Text('Camera'),
                          //   onTap: () {
                          //     // Close the bottom sheet
                          //     Navigator.pop(context);

                          //     // Open camera
                          //     _openCamera(context);
                          //   },
                          // ),
                          // ListTile(
                          //   leading: Icon(Icons.photo),
                          //   title: Text('Gallery'),
                          //   onTap: () {
                          //     // Close the bottom sheet
                          //     Navigator.pop(context);

                          //     // Open gallery
                          //     _openGallery(context);
                          //   },
                          // ),
                        ],
                      ));
                },
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: 94.h,
                bottom: 69.v,
              ),
              child: CustomIconButton(
                height: 31.adaptSize,
                width: 31.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: IconButtonStyleHelper.fillLightBlue,
                alignment: Alignment.bottomRight,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup4,
                ),
              ),
            ),
          ),
          CustomElevatedButton(
            width: 322.h,
            text: loginController.fetchdata.value.data!.name.toString(),
            // loginController.loginResponse.value.data!.name== null?"Name": loginController.loginResponse.value.data!.name.toString(),
            alignment: Alignment.bottomCenter,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 59.v),
              child: Text(
                "lbl_profile".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 180.v,
              width: 110.h,
              padding: EdgeInsets.only(
                left: 11.h,
                top: 61.v,
                right: 11.h,
              ),
              decoration: BoxDecoration(
                // borderRadius: BorderRadiusStyle.customBorderTL162,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/topright.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: InkWell(
                onTap: () async {
                  await loginController.logout().then((value) => Get.offNamed(
                        AppRoutes.loginscreenScreen,
                      ));
                },
                child: CustomImageView(
                  imagePath: 'assets/images/Logout.png',
                  height: 37.adaptSize,
                  width: 37.adaptSize,
                  alignment: Alignment.topRight,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 180.v,
              width: 110.h,
              padding: EdgeInsets.only(
                left: 11.h,
                top: 61.v,
                right: 11.h,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/topleft.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SalarySlipPage(),
                  ));
                },
                child: CustomImageView(
                  imagePath: 'assets/images/Purchase Order.png',
                  height: 37.adaptSize,
                  width: 37.adaptSize,
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(TabController tabcontroller) {
    return Container(
      height: 71.v,
      width: 340.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.onError,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: TabBar(
        controller: tabcontroller,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onError,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.lightBlue300,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          color: appTheme.lightBlue300,
          borderRadius: BorderRadius.circular(
            20.h,
          ),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.primary,
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                0,
                4,
              ),
            ),
          ],
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_profile_info".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_bank_details".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_salary".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarViewPager(TabController tabcontroller) {
    return SizedBox(
      height: 552.v,
      child: TabBarView(
        controller: tabcontroller,
        children: [
          ProfileinfopagePage(),
          ProfilebankpagePage(),
          MyHomePage(),
        ],
      ),
    );
  }

  /// Section Widget
}
