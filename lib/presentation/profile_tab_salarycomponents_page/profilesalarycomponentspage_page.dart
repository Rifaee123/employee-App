import 'dart:developer';

import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';
import 'package:muhammad_s_application3/data/models/login_response/tablerow.dart';

import 'controller/profilesalarycomponentspage_controller.dart';
import 'models/profilesalarycomponentspage_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';

// class ProfilesalarycomponentspagePage extends StatelessWidget {
//   ProfilesalarycomponentspagePage({Key? key})
//       : super(
//           key: key,
//         );

//   ProfilesalarycomponentspageController controller = Get.put(
//       ProfilesalarycomponentspageController(
//           ProfilesalarycomponentspageModel().obs));

//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);

//     return SafeArea(
//       child: Scaffold(
//         body: SizedBox(
//           width: mediaQueryData.size.width,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: 24.v),
//                 _buildFiftySeven(),
//                 SizedBox(height: 24.v),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildFiftySeven() {
//     return Padding(
//       padding: EdgeInsets.only(
//         left: 16.h,
//         right: 9.h,
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 377.v,
//             width: 333.h,
//             child: Stack(
//               alignment: Alignment.topCenter,
//               children: [
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 2.h),
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 13.h,
//                       vertical: 28.v,
//                     ),
//                     decoration: AppDecoration.outlinePrimary1.copyWith(
//                       borderRadius: BorderRadiusStyle.customBorderBL20,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 3.h),
//                           child: Text(
//                             "lbl_salary_details".tr,
//                             style: theme.textTheme.titleSmall,
//                           ),
//                         ),
//                         SizedBox(height: 7.v),
//                         Padding(
//                           padding: EdgeInsets.only(left: 3.h),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(bottom: 1.v),
//                                 child: Text(
//                                   "lbl_employee_type".tr,
//                                   style: theme.textTheme.bodyMedium,
//                                 ),
//                               ),
//                               Text(
//                                 "msg_permanent_employee".tr,
//                                 style: CustomTextStyles.bodyLargeGray60003,
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 5.v),
//                         Padding(
//                           padding: EdgeInsets.only(left: 3.h),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(top: 1.v),
//                                 child: Text(
//                                   "msg_date_of_joining".tr,
//                                   style: theme.textTheme.bodyMedium,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(left: 5.h),
//                                 child: Text(
//                                   "lbl_2023_11_02".tr,
//                                   style: theme.textTheme.bodyMedium,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 7.v),
//                         Padding(
//                           padding: EdgeInsets.only(left: 3.h),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(top: 1.v),
//                                 child: Text(
//                                   "lbl_basic_salary".tr,
//                                   style: theme.textTheme.bodyMedium,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(left: 8.h),
//                                 child: Text(
//                                   "lbl_20_000".tr,
//                                   style: CustomTextStyles.bodyLargeGray60003,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 5.v),
//                         Padding(
//                           padding: EdgeInsets.only(left: 3.h),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(top: 1.v),
//                                 child: Text(
//                                   "msg_percentage_value".tr,
//                                   style: theme.textTheme.bodyMedium,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(left: 8.h),
//                                 child: Text(
//                                   "lbl_2".tr,
//                                   style: theme.textTheme.bodyMedium,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 7.v),
//                         Padding(
//                           padding: EdgeInsets.only(left: 3.h),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(top: 1.v),
//                                 child: Text(
//                                   "msg_salary_componets2".tr,
//                                   style: theme.textTheme.bodyMedium,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(left: 5.h),
//                                 child: Text(
//                                   "lbl_esi".tr,
//                                   style: theme.textTheme.bodyMedium,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 21.v),
//                         Align(
//                           alignment: Alignment.center,
//                           child: Container(
//                             margin: EdgeInsets.symmetric(horizontal: 72.h),
//                             padding: EdgeInsets.symmetric(
//                               horizontal: 30.h,
//                               vertical: 13.v,
//                             ),
//                             decoration: AppDecoration.outlinePrimary1.copyWith(
//                               borderRadius: BorderRadiusStyle.roundedBorder10,
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   "lbl_total_salary".tr,
//                                   style: CustomTextStyles
//                                       .titleMediumPrimaryContainer,
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 6.h),
//                                   child: Text(
//                                     "lbl_523766_89".tr,
//                                     style: CustomTextStyles
//                                         .titleMediumPrimaryContainer,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 3.v),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 327.v),
//                   child: _buildReceiveDollar(
//                     salaryComponets: "msg_salary_componets".tr,
//                     backArrow: ImageConstant.imgBackArrow29x29,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 27.v),
//           Padding(
//             padding: EdgeInsets.only(left: 2.h),
//             child: _buildReceiveDollar(
//               salaryComponets: "msg_salary_componets".tr,
//               backArrow: ImageConstant.imgBackArrow,
//             ),
//           ),
//           SizedBox(height: 28.v),
//           Padding(
//             padding: EdgeInsets.only(left: 2.h),
//             child: _buildReceiveDollar(
//               salaryComponets: "msg_salary_componets".tr,
//               backArrow: ImageConstant.imgBackArrow,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Common widget
//   Widget _buildReceiveDollar({
//     required String salaryComponets,
//     required String backArrow,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: 15.h,
//         vertical: 10.v,
//       ),
//       decoration: AppDecoration.outlinePrimary2.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomImageView(
//             imagePath: ImageConstant.imgReceiveDollar,
//             height: 30.adaptSize,
//             width: 30.adaptSize,
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               left: 14.h,
//               top: 5.v,
//             ),
//             child: Text(
//               salaryComponets,
//               style: CustomTextStyles.bodyMediumOnError.copyWith(
//                 color: theme.colorScheme.onError,
//               ),
//             ),
//           ),
//           Spacer(),
//           CustomImageView(
//             imagePath: backArrow,
//             height: 29.adaptSize,
//             width: 29.adaptSize,
//             margin: EdgeInsets.only(right: 1.h),
//           ),
//         ],
//       ),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Item> _data;
  // final ProfilesalarycomponentspageController controller = Get.put(
  //     ProfilesalarycomponentspageController(
  //         profilesalarycomponentspageModelObj));

  ProfilesalarycomponentspageController controller = Get.put(
      ProfilesalarycomponentspageController(
          ProfilesalarycomponentspageModel().obs));
  final LoginController loginController = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
    if (loginController.fetchdata.value.data!.tablerow!.isNotEmpty) {
      addTablerow(
          loginController.fetchdata.value.data!.tablerow as List<Tablerows>);
      log(tablerow[0].price.toString());
    }
  }

  List<Tablerows> tablerow = [];
  void addTablerow(List<Tablerows> tablerowItem) {
    tablerow = tablerowItem;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 7.v),
          // ExpansionPanelList(
          //   elevation: 1,
          //   expandedHeaderPadding: EdgeInsets.all(0),
          //   expansionCallback: (int index, bool isExpanded) {
          //     log('tapped');
          //     setState(() {
          //       _data[index].isExpanded = isExpanded;
          //     });
          //   },
          //   children: _data.map<ExpansionPanel>((Item item) {
          //     return ExpansionPanel(
          //       headerBuilder: (BuildContext context, bool isExpanded) {
          //         return ListTile(
          //           leading: Icon(
          //             // Customize the icon here
          //             isExpanded ? Icons.abc_rounded : Icons.arrow_right,
          //           ),
          //           title: Text(item.expandedValue),
          //         );
          //       },
          //       body: item.widget, // Use the widget property here
          //       isExpanded: item.isExpanded,
          //     );
          //   }).toList(),
          // ),
          tablerow.isEmpty
              ? Text("No Data")
              : ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: tablerow.length,
                  itemBuilder: (context, index) => _buildReceiveDollar(
                      salaryComponets:
                          tablerow[index].salaryComponent.toString(),
                      backArrow: ImageConstant.imgBackArrow29x29,
                      index: index,
                      data: tablerow),
                ),
          SizedBox(height: 50.v),
        ],
      ),
    );
  }

  Widget _buildFiftySeven({required List data, required int index}) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 87.v,
            width: 333.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: AppDecoration.outlinePrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL20,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_salary_details".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          SizedBox(height: 7.v),
                          // Padding(
                          //   padding: EdgeInsets.only(left: 3.h),
                          //   child: Row(
                          //     children: [
                          //       Padding(
                          //         padding:
                          //             EdgeInsets.only(bottom: 1.v, right: 8.h),
                          //         child: Text(
                          //           "lbl_employee_type".tr,
                          //           style: theme.textTheme.bodyMedium,
                          //         ),
                          //       ),
                          //       Text(
                          //         loginController
                          //             .fetchdata.value.data!.employeetype
                          //             .toString(),
                          //         style: CustomTextStyles.bodyLargeGray60003,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(height: 5.v),
                          // Padding(
                          //   padding: EdgeInsets.only(left: 3.h),
                          //   child: Row(
                          //     children: [
                          //       Padding(
                          //         padding: EdgeInsets.only(top: 1.v),
                          //         child: Text(
                          //           "msg_date_of_joining".tr,
                          //           style: theme.textTheme.bodyMedium,
                          //         ),
                          //       ),
                          //       Padding(
                          //         padding: EdgeInsets.only(left: 5.h),
                          //         child: Text(
                          //           loginController
                          //               .fetchdata.value.data!.dateOfJoining
                          //               .toString(),
                          //           style: theme.textTheme.bodyMedium,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(height: 7.v),
                          // Padding(
                          //   padding: EdgeInsets.only(left: 3.h),
                          //   child: Row(
                          //     children: [
                          //       Padding(
                          //         padding: EdgeInsets.only(top: 1.v),
                          //         child: Text(
                          //           "lbl_basic_salary".tr,
                          //           style: theme.textTheme.bodyMedium,
                          //         ),
                          //       ),
                          //       Padding(
                          //         padding: EdgeInsets.only(left: 8.h),
                          //   child: Text(
                          //     loginController
                          //         .fetchdata.value.data!.basicSalary
                          //         .toString(),
                          //     style: CustomTextStyles.bodyLargeGray60003,
                          //   ),
                          // ),
                          //     ],
                          //   ),
                          // ),
                          SizedBox(height: 5.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(
                                    "msg_percentage_value".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    loginController.fetchdata.value.data!
                                                .tablerow![index].percentage ==
                                            null
                                        ? loginController.fetchdata.value.data!
                                            .tablerow![index].value
                                            .toString()
                                        : loginController.fetchdata.value.data!
                                            .tablerow![index].percentage
                                            .toString(),
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 7.v),
                          // Padding(
                          //   padding: EdgeInsets.only(left: 3.h),
                          //   child: Row(
                          //     children: [
                          //       Padding(
                          //         padding: EdgeInsets.only(top: 1.v),
                          //         child: Text(
                          //           "msg_salary_componets2".tr,
                          //           style: theme.textTheme.bodyMedium,
                          //         ),
                          //       ),
                          //       Padding(
                          //         padding: EdgeInsets.only(left: 5.h),
                          //         child: Text(
                          //           loginController.fetchdata.value.data!
                          //               .tablerow![index].salaryComponent
                          //               .toString(),
                          //           style: theme.textTheme.bodyMedium,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(height: 21.v),
                          // Align(
                          //   alignment: Alignment.center,
                          //   child: Container(
                          //     margin: EdgeInsets.symmetric(horizontal: 72.h),
                          //     padding: EdgeInsets.symmetric(
                          //       horizontal: 10.h,
                          //       vertical: 13.v,
                          //     ),
                          //     decoration: AppDecoration.outlinePrimary1.copyWith(
                          //       borderRadius: BorderRadiusStyle.roundedBorder10,
                          //     ),
                          //     child: Column(
                          //       mainAxisSize: MainAxisSize.min,
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //         Text(
                          //           "lbl_total_salary".tr,
                          //           style: CustomTextStyles
                          //               .titleMediumPrimaryContainer,
                          //         ),
                          //         Padding(
                          //           padding: EdgeInsets.only(left: 6.h),
                          //           child: Text(
                          //             loginController
                          //                 .fetchdata.value.data!.totalSalary
                          //                 .toString(),
                          //             style: CustomTextStyles
                          //                 .titleMediumPrimaryContainer,
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          SizedBox(height: 3.v),
                        ],
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(bottom: 327.v),
                //   child: _buildReceiveDollar(
                //     salaryComponets: "msg_salary_componets".tr,
                //     backArrow: ImageConstant.imgBackArrow29x29,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReceiveDollar(
      {required String salaryComponets,
      required String backArrow,
      required List data,
      required int index}) {
    int currentidex;
    currentidex = index;
    return Obx(() => Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.outlinePrimary2.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgReceiveDollar,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        top: 5.v,
                      ),
                      child: Text(
                        salaryComponets,
                        style: CustomTextStyles.bodyMediumOnError.copyWith(
                          color: theme.colorScheme.onError,
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        loginController.fetchdata.value.data!.tablerow![index]
                                    .isExpand ==
                                false
                            ? loginController.fetchdata.value.data!
                                .tablerow![index].isExpand.value = true
                            : loginController.fetchdata.value.data!
                                .tablerow![index].isExpand.value = false;
                      },
                      child: CustomImageView(
                        imagePath: loginController.fetchdata.value.data!
                                    .tablerow![index].isExpand ==
                                true
                            ? backArrow
                            : 'assets/images/Back Arrow.png',
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        margin: EdgeInsets.only(right: 1.h),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            loginController.fetchdata.value.data!.tablerow![index].isExpand ==
                    true
                ? _buildFiftySeven(data: data, index: index)
                : SizedBox(),
            SizedBox(
              height: 15.h,
            )
          ],
        ));
  }
}

class Item {
  Item({
    required this.widget,
    this.isExpanded = false,
  });

  Widget widget;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems, Widget widget) {
  return List<Item>.generate(numberOfItems, (
    int index,
  ) {
    return Item(
      widget: widget,
    );
  });
}
