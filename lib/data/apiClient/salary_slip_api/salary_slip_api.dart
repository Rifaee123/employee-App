import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_s_application3/data/models/salary_slip_response/salary_slip_response.dart';

class PayslipController extends GetxController {
  RxBool isLoading = false.obs;
  RxMap paySlipData = {}.obs;
  RxString error = ''.obs;
  Rx<SalarySlipResponse> salarySlipresponse = SalarySlipResponse().obs;

  Future<void> getPayslip(
      {required String authToken,
      required int month,
      required int year,
      required String userId}) async {
    try {
      isLoading(true);

      final response = await http.post(
        Uri.parse(
            'https://marketfed.cyenosure.in/api/userlogin//payslip/$userId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $authToken',
        },
        body: jsonEncode({"month": month, "year": year}),
      );

      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        log('Decoded Response : ${decodedResponse}');
        salarySlipresponse.value = SalarySlipResponse.fromJson(decodedResponse);

        log(salarySlipresponse.value.data!.netpay.toString());
        paySlipData(decodedResponse['data'][0]);
      } else {
        error('Failed to fetch payslip. Status code: ${response.statusCode}');
      }
    } catch (e) {
      error('Error: $e');
    } finally {
      isLoading(false);
    }
  }
}
