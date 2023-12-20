// import 'dart:developer';
// import 'dart:io';

// import 'package:flutter/material.dart';

// import 'package:muhammad_s_application3/core/app_export.dart';
// import 'package:muhammad_s_application3/data/apiClient/salary_slip_api/salary_slip_api.dart';
// import 'package:muhammad_s_application3/presentation/salary_slip_page.dart/controller/salary_page_controller.dart';

// import 'package:printing/printing.dart';
// import 'package:url_launcher/url_launcher.dart';

// class PrintingScreen extends StatelessWidget {
//   final PdfController pdfController = Get.put(PdfController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PDF Preview'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               onChanged: (value) =>
//                   pdfController.pdfData.update((val) => val?.name = value),
//               decoration: InputDecoration(labelText: 'Name'),
//             ),
//             TextField(
//               onChanged: (value) => pdfController.pdfData
//                   .update((val) => val?.designation = value),
//               decoration: InputDecoration(labelText: 'Designation'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => pdfController.generateAndPreviewPdf(),
//               child: Obx(() => pdfController.loading.value
//                   ? CircularProgressIndicator()
//                   : Text('Generate and Preview')),
//             ),
//             Obx(() {
//               final error = pdfController.error.value;
//               return error != null ? Text('Error: $error') : SizedBox.shrink();
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }
