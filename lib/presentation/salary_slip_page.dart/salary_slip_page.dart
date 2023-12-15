import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/core/app_export.dart';

class SalarySlipPage extends StatelessWidget {
  const SalarySlipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                        Container(
                          width: 160.adaptSize,
                          height: 56.adaptSize,
                          decoration: BoxDecoration(
                              color: Color(0x479356a0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              'Jan',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 160.adaptSize,
                          height: 56.adaptSize,
                          decoration: BoxDecoration(
                              color: Color(0x479356a0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              '2016',
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
                      padding: const EdgeInsets.only(left: 160),
                      child: Container(
                        width: 172.adaptSize,
                        height: 56.adaptSize,
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 328.adaptSize,
                      height: 190.adaptSize,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff9356a0), Color(0x00e1d0e4)],
                          )),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('GAYATHIRI',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                    Text('FIELD OFFICER',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                                Image.asset(
                                  'assets/images/cardsalary.png',
                                  height: 70,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Net Pay',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '30,000',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 160,
                          height: 133,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff81d762)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Earnings",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                                Text("28,000",
                                    style: TextStyle(
                                        fontSize: 20.760000228881836,
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
                          width: 160,
                          height: 133,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffe37070)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Deduction",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                                Text("2,000",
                                    style: TextStyle(
                                        fontSize: 20.760000228881836,
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
                      width: 330,
                      height: 205,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0x2681d762)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Earnings Details",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(
                                        255, 77, 216, 86))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Basic Pay ",
                                    style: TextStyle(
                                      fontSize: 17.760000228881836,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("28,000",
                                    style: TextStyle(
                                      fontSize: 16.760000228881836,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("DA",
                                    style: TextStyle(
                                      fontSize: 17.760000228881836,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("15,000",
                                    style: TextStyle(
                                      fontSize: 16.760000228881836,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("HRA",
                                    style: TextStyle(
                                      fontSize: 17.760000228881836,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("1,000",
                                    style: TextStyle(
                                      fontSize: 16.760000228881836,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("CCA",
                                    style: TextStyle(
                                      fontSize: 17.760000228881836,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("1,000",
                                    style: TextStyle(
                                      fontSize: 16.760000228881836,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 330,
                      height: 205,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0x26d76262)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Earnings Details",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 216, 77, 77))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("EPF ",
                                    style: TextStyle(
                                      fontSize: 17.760000228881836,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("200",
                                    style: TextStyle(
                                      fontSize: 16.760000228881836,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("EWF",
                                    style: TextStyle(
                                      fontSize: 17.760000228881836,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("400",
                                    style: TextStyle(
                                      fontSize: 16.760000228881836,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("INCOME TAX",
                                    style: TextStyle(
                                      fontSize: 17.760000228881836,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("600",
                                    style: TextStyle(
                                      fontSize: 16.760000228881836,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("LIC",
                                    style: TextStyle(
                                      fontSize: 17.760000228881836,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("800",
                                    style: TextStyle(
                                      fontSize: 16.760000228881836,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
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
                        height: 50,
                        width: 225,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color(0xff9356a0))),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Download Pdf",
                                    style: TextStyle(color: Colors.white)),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
