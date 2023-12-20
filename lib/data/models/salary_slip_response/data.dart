import 'package:json_annotation/json_annotation.dart';

import 'tablerow.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  String? name;
  String? designation;
  String? earnings;
  String? deductions;
  String? basicpay;
  int? netpay;
  List<Tablerow>? tablerow;

  Data({
    this.name,
    this.designation,
    this.earnings,
    this.deductions,
    this.basicpay,
    this.netpay,
    this.tablerow,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
