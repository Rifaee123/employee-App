import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'salary_slip_response.g.dart';

@JsonSerializable()
class SalarySlipResponse {
  bool? success;
  String? message;
  Data? data;

  SalarySlipResponse({this.success, this.message, this.data});

  factory SalarySlipResponse.fromJson(Map<String, dynamic> json) {
    return _$SalarySlipResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalarySlipResponseToJson(this);
}
