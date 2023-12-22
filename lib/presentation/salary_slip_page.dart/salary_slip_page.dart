import 'dart:developer';

import 'package:muhammad_s_application3/data/apiClient/salary_slip_api/salary_slip_api.dart';
import 'package:muhammad_s_application3/presentation/pdf_preview_page/pdf_priview_page.dart';
import 'package:muhammad_s_application3/presentation/salary_slip_page.dart/controller/salary_page_controller.dart';

import 'package:flutter/material.dart';

import 'package:muhammad_s_application3/core/app_export.dart';

class SalarySlipPage extends StatefulWidget {
  const SalarySlipPage({Key? key}) : super(key: key);

  @override
  State<SalarySlipPage> createState() => _SalarySlipPageState();
}

class _SalarySlipPageState extends State<SalarySlipPage> {
  SalaryPageController controller = Get.put(SalaryPageController());
  PayslipController payslipcontroller = Get.put(PayslipController());
  final PdfController pdfController = Get.put(PdfController());

  @override
  Widget build(BuildContext context) {
    //    Future<void> _saveAsFile(
    //   BuildContext context,
    //   LayoutCallback build,
    //   PdfPageFormat pageFormat,
    // ) async {
    //   final bytes = build(pageFormat as Constraints);

    //   final appDocDir = await getApplicationDocumentsDirectory();
    //   final appDocPath = appDocDir.path;
    //   final file = File('$appDocPath/document.pdf');
    //   print('Save as file ${file.path} ...');
    //   await file.writeAsBytes(bytes);
    //   await OpenFile.open(file.path);
    // }
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 165.adaptSize,
                child: Stack(
                  children: [
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
                        child: CustomImageView(
                          imagePath: ImageConstant.imgNotification,
                          height: 37.adaptSize,
                          width: 37.adaptSize,
                          alignment: Alignment.topRight,
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
                            Navigator.of(context).pop();
                          },
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLeft,
                            height: 37.adaptSize,
                            width: 37.adaptSize,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 59.v),
                        child: Text(
                          "salaryReport".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Month And Year',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            controller.selectMonthAndYear(context);
                          },
                          child: Container(
                            width: 160.h,
                            height: 56.v,
                            decoration: BoxDecoration(
                                color: Color(0x479356a0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Center(
                              child: Text(
                                '${controller.selectedDate.value.month}',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 160.h,
                          height: 56.v,
                          decoration: BoxDecoration(
                              color: Color(0x479356a0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              '${controller.selectedDate.value.year}',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 168.h),
                      child: InkWell(
                        onTap: () {
                          controller.salaryReport(
                              month: controller.selectedDate.value.month,
                              year: controller.selectedDate.value.year);
                        },
                        child: Container(
                          width: 160.h,
                          height: 56.v,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xff9356a0)),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    payslipcontroller.salarySlipresponse.value.data == null
                        ? Center(
                            child: Text("no data"),
                          )
                        : Obx(() => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.v,
                                ),
                                payslipcontroller.isLoading.value == true
                                    ? Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : Container(
                                        width: 328.h,
                                        height: 190.v,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color(0xff9356a0),
                                                Color(0x00e1d0e4)
                                              ],
                                            )),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10.v,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20.v),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          payslipcontroller
                                                              .salarySlipresponse
                                                              .value
                                                              .data!
                                                              .name
                                                              .toString(),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900)),
                                                      Text(
                                                          payslipcontroller
                                                              .salarySlipresponse
                                                              .value
                                                              .data!
                                                              .designation
                                                              .toString(),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500))
                                                    ],
                                                  ),
                                                  Image.asset(
                                                    'assets/images/cardsalary.png',
                                                    height: 70.v,
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.v,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20.v),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Net Pay',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    payslipcontroller
                                                        .salarySlipresponse
                                                        .value
                                                        .data!
                                                        .netpay
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                SizedBox(
                                  height: 10.v,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 160.h,
                                      height: 133.v,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xff81d762)),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Earnings",
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                            Text(
                                                payslipcontroller
                                                    .salarySlipresponse
                                                    .value
                                                    .data!
                                                    .earnings
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize:
                                                        20.760000228881836,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white))
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 160.h,
                                      height: 133.v,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xffe37070)),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Deduction",
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                            Text(
                                                payslipcontroller
                                                    .salarySlipresponse
                                                    .value
                                                    .data!
                                                    .deductions
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize:
                                                        20.760000228881836,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 330.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0x2681d762)),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 40),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Earnings Details",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromARGB(
                                                    255, 77, 216, 86))),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemCount: payslipcontroller
                                              .salarySlipresponse
                                              .value
                                              .data!
                                              .tablerow!
                                              .length,
                                          itemBuilder: (context, index) {
                                            return payslipcontroller
                                                        .salarySlipresponse
                                                        .value
                                                        .data!
                                                        .tablerow![index]
                                                        .salaryComponent!
                                                        .type ==
                                                    "Increment"
                                                ? Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          payslipcontroller
                                                              .salarySlipresponse
                                                              .value
                                                              .data!
                                                              .tablerow![index]
                                                              .salaryComponent!
                                                              .name
                                                              .toString(),
                                                          style: TextStyle(
                                                            fontSize:
                                                                17.760000228881836,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          )),
                                                      Text(
                                                          payslipcontroller
                                                              .salarySlipresponse
                                                              .value
                                                              .data!
                                                              .tablerow![index]
                                                              .price
                                                              .toString(),
                                                          style: TextStyle(
                                                            fontSize:
                                                                16.760000228881836,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          )),
                                                    ],
                                                  )
                                                : SizedBox();
                                          },
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        // Row(
                                        //   mainAxisAlignment:
                                        //       MainAxisAlignment.spaceBetween,
                                        //   children: [
                                        //     Text("Basic Pay ",
                                        //         style: TextStyle(
                                        //           fontSize: 17.760000228881836,
                                        //           fontWeight: FontWeight.w400,
                                        //         )),
                                        //     Text("28,000",
                                        //         style: TextStyle(
                                        //           fontSize: 16.760000228881836,
                                        //           fontWeight: FontWeight.w500,
                                        //         )),
                                        //   ],
                                        // ),
                                        // Row(
                                        //   mainAxisAlignment:
                                        //       MainAxisAlignment.spaceBetween,
                                        //   children: [
                                        //     Text("DA",
                                        //         style: TextStyle(
                                        //           fontSize: 17.760000228881836,
                                        //           fontWeight: FontWeight.w400,
                                        //         )),
                                        //     Text("15,000",
                                        //         style: TextStyle(
                                        //           fontSize: 16.760000228881836,
                                        //           fontWeight: FontWeight.w500,
                                        //         )),
                                        //   ],
                                        // ),
                                        // Row(
                                        //   mainAxisAlignment:
                                        //       MainAxisAlignment.spaceBetween,
                                        //   children: [
                                        //     Text("HRA",
                                        //         style: TextStyle(
                                        //           fontSize: 17.760000228881836,
                                        //           fontWeight: FontWeight.w400,
                                        //         )),
                                        //     Text("1,000",
                                        //         style: TextStyle(
                                        //           fontSize: 16.760000228881836,
                                        //           fontWeight: FontWeight.w500,
                                        //         )),
                                        //   ],
                                        // ),
                                        // Row(
                                        //   mainAxisAlignment:
                                        //       MainAxisAlignment.spaceBetween,
                                        //   children: [
                                        //     Text("CCA",
                                        //         style: TextStyle(
                                        //           fontSize: 17.760000228881836,
                                        //           fontWeight: FontWeight.w400,
                                        //         )),
                                        //     Text("1,000",
                                        //         style: TextStyle(
                                        //           fontSize: 16.760000228881836,
                                        //           fontWeight: FontWeight.w500,
                                        //         )),
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 330.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0x26d76262)),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 40),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Earnings Details",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 216, 77, 77))),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemCount: payslipcontroller
                                              .salarySlipresponse
                                              .value
                                              .data!
                                              .tablerow!
                                              .length,
                                          itemBuilder: (context, index) {
                                            return payslipcontroller
                                                        .salarySlipresponse
                                                        .value
                                                        .data!
                                                        .tablerow![index]
                                                        .salaryComponent!
                                                        .type ==
                                                    "Decrement"
                                                ? Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          payslipcontroller
                                                              .salarySlipresponse
                                                              .value
                                                              .data!
                                                              .tablerow![index]
                                                              .salaryComponent!
                                                              .name
                                                              .toString(),
                                                          style: TextStyle(
                                                            fontSize:
                                                                17.760000228881836,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          )),
                                                      Text(
                                                          payslipcontroller
                                                              .salarySlipresponse
                                                              .value
                                                              .data!
                                                              .tablerow![index]
                                                              .price
                                                              .toString(),
                                                          style: TextStyle(
                                                            fontSize:
                                                                16.760000228881836,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          )),
                                                    ],
                                                  )
                                                : SizedBox();
                                          },
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: SizedBox(
                                    height: 50.v,
                                    width: 225.h,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Color(0xff9356a0))),
                                        onPressed: () async {
                                          pdfController.generateAndPreviewPdf(
                                              payslipcontroller
                                                  .salarySlipresponse
                                                  .value
                                                  .data!);
                                          // Navigator.of(context)
                                          //     .push(MaterialPageRoute(
                                          //   builder: (context) =>
                                          //       PrintingScreen(
                                          //         ),
                                          // ));

                                          // PdfGenerator.openFile(pdfBytes);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Download Pdf",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            Image.asset(
                                              'assets/images/pdf Icon.png',
                                              height: 25,
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ))
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
