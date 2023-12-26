import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application3/presentation/salary_slip_page.dart/models/pdf_model.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';
import 'package:muhammad_s_application3/data/apiClient/salary_slip_api/salary_slip_api.dart';
import 'package:muhammad_s_application3/data/models/salary_slip_response/data.dart';
import 'package:printing/printing.dart';
import '../../../data/models/salary_slip_response/tablerow.dart';
import 'dart:typed_data';
import 'package:pdf/widgets.dart' as pw;

class SalaryPageController extends GetxController {
  Rx<DateTime> selectedDate = DateTime.now().obs;
  PayslipController payslipcontroller = Get.put(PayslipController());
  final LoginController loginController = Get.put(LoginController());
  List<Tablerow> tablerow = [];
  void addTablerow(List<Tablerow> tablerowItem) {
    tablerow = tablerowItem;
  }

  Future<void> salaryReport({
    required int month,
    required int year,
  }) async {
    final String? token = await loginController.getAuthToken();
    final String? userid = await loginController.getUserId();
    print(token);
    print(userid);
    payslipcontroller.getPayslip(
        authToken: token!, month: month, year: year, userId: userid!);
    if (payslipcontroller.salarySlipresponse.value.data != null) {
      if (payslipcontroller
          .salarySlipresponse.value.data!.tablerow!.isNotEmpty) {
        addTablerow(payslipcontroller.salarySlipresponse.value.data!.tablerow
            as List<Tablerow>);
        log(tablerow[0].salaryComponent!.type.toString());
      }
    }
  }

  Future<void> selectMonthAndYear(BuildContext context) async {
    DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    ).then((value) {
      log(value.toString());
      if (value != null && value != selectedDate.value) {
        selectedDate.value = value;
      }
      return value;
    });
    log(newDate.toString());

    if (newDate != null) {
      selectedDate.value = newDate;
      log(selectedDate.value.toString());
      log(newDate.toString());
      update();
    }
  }
}

class PdfGenerator {
  static Future<Uint8List> generatePdf(Data payslipData) async {
    final pw.Document pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (context) => _buildPdfContent(context, payslipData),
      ),
    );

    return pdf.save();
  }

  static pw.Widget _buildPdfContent(pw.Context context, Data payslipData) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('Name: ${payslipData.name}'),
            pw.Text('Designation: ${payslipData.designation}'),
            pw.Text('Earnings: ${payslipData.earnings}'),
            pw.Text('Deductions: ${payslipData.deductions}'),
            pw.Text('Basic Pay: ${payslipData.basicpay}'),
            pw.Text('Net Pay: ${payslipData.netpay}'),
            pw.SizedBox(height: 20),
            pw.Text('Table Rows:'),
            pw.ListView.builder(
              itemCount: payslipData.tablerow!.length,
              itemBuilder: (context, index) {
                final rowItem = payslipData.tablerow![index];
                return pw.Column(
                  children: [
                    pw.Text('ID: ${rowItem.id}'),
                    pw.Text('Price: ${rowItem.price}'),
                  ],
                );
              },
            ),
          ],
        )
      ],
    );
  }
}

class PdfController extends GetxController {
  var pdfData = PdfData(name: '', designation: '').obs;
  var loading = false.obs;
  var error = Rxn<Exception>();

  void generateAndPreviewPdf(Data payslipData) async {
    try {
      loading(true);
      final pdfBytes = await PdfGenerator.generatePdf(payslipData);
      await _previewPdf(pdfBytes);
    } catch (e) {
      log(e.toString());
    } finally {
      loading(false);
    }
  }
/////hai
  Future<void> _previewPdf(Uint8List pdfBytes) async {
    await Printing.sharePdf(bytes: pdfBytes, filename: 'SalaryReport.pdf');
  }
}


// class PdfGenerator {
//   static Future openFile(File file) async {
//     final url = file.path;

//     await OpenFile.open(url);
//   }

//   static Future<File> saveDocument({
//     required String name,
//     required Document pdf,
//   }) async {
//     final bytes = await pdf.save();

//     final dir = await getApplicationDocumentsDirectory();
//     final file = File('${dir.path}/$name');

//     await file.writeAsBytes(bytes);

//     return file;
//   }

//   static Future<Uint8List> generatePdf(Data payslipData) async {
//     final pw.Document pdf = pw.Document();

//     pdf.addPage(pw.Page(
//       build: (context) => _buildPdfContent(context, payslipData),
//     ));
//     final List<int> bytes = await pdf.save();
//     return Uint8List.fromList(bytes);
//   }

//   static pw.Widget _buildPdfContent(pw.Context context, Data payslipData) {
//     return pw.Column(
//       crossAxisAlignment: pw.CrossAxisAlignment.start,
//        children: [
//         pw.Text('Name: ${payslipData.name}'),
//         pw.Text('Designation: ${payslipData.designation}'),
//         pw.Text('Earnings: ${payslipData.earnings}'),
//         pw.Text('Deductions: ${payslipData.deductions}'),
//         pw.Text('Basic Pay: ${payslipData.basicpay}'),
//         pw.Text('Net Pay: ${payslipData.netpay}'),
//         pw.SizedBox(height: 20),
//         pw.Text('Table Rows:'),
//         pw.ListView.builder(
//           itemCount: payslipData.tablerow!.length,
//           itemBuilder: (context, index) {
//             final rowItem = payslipData.tablerow![index];
//             return pw.Column(
//               children: [
//                 pw.Text('ID: ${rowItem.id}'),
//                 pw.Text('Price: ${rowItem.price}'),
//               ],
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
