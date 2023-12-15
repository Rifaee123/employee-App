import 'package:json_annotation/json_annotation.dart';

import 'tablerow.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  String? id;
  String? name;
  String? email;
  String? employeeid;
  String? department;
  String? designation;
  String? address;
  String? employeeNo;
  String? bank;
  int? phone;
  String? branch;
  String? accountNumber;
  String? ifsc;
  String? panNo;
  String? panName;
  String? dateOfBirth;
  String? dateOfJoining;
  String? guardianName;
  String? basicSalary;
  int? allowedLeave;
  String? gender;
  String? universalAccountNumber;
  String? city;
  String? country;
  List<Tablerows>? tablerow;
  int? totalSalary;
  String? image;
  String? employeetype;

  Data(
      {this.id,
      this.name,
      this.email,
      this.employeeid,
      this.department,
      this.designation,
      this.address,
      this.employeeNo,
      this.bank,
      this.phone,
      this.branch,
      this.accountNumber,
      this.ifsc,
      this.panNo,
      this.panName,
      this.dateOfBirth,
      this.dateOfJoining,
      this.guardianName,
      this.basicSalary,
      this.allowedLeave,
      this.gender,
      this.universalAccountNumber,
      this.city,
      this.country,
      this.tablerow,
      this.totalSalary,
      this.employeetype,
      this.image});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
