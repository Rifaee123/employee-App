// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      employeeid: json['employeeid'] as String?,
      department: json['department'] as String?,
      designation: json['designation'] as String?,
      address: json['address'] as String?,
      employeeNo: json['employeeNo'] as String?,
      bank: json['bank'] as String?,
      phone: json['phone'] as int?,
      branch: json['branch'] as String?,
      accountNumber: json['accountNumber'] as String?,
      ifsc: json['ifsc'] as String?,
      panNo: json['panNo'] as String?,
      panName: json['panName'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      dateOfJoining: json['dateOfJoining'] as String?,
      guardianName: json['guardianName'] as String?,
      basicSalary: json['basicSalary'] as String?,
      allowedLeave: json['allowedLeave'] as int?,
      gender: json['gender'] as String?,
      universalAccountNumber: json['universalAccountNumber'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      tablerow: (json['tablerow'] as List<dynamic>?)
          ?.map((e) => Tablerows.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalSalary: json['totalSalary'] as int?,
      employeetype: json['employeetype'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'employeeid': instance.employeeid,
      'department': instance.department,
      'designation': instance.designation,
      'address': instance.address,
      'employeeNo': instance.employeeNo,
      'bank': instance.bank,
      'phone': instance.phone,
      'branch': instance.branch,
      'accountNumber': instance.accountNumber,
      'ifsc': instance.ifsc,
      'panNo': instance.panNo,
      'panName': instance.panName,
      'dateOfBirth': instance.dateOfBirth,
      'dateOfJoining': instance.dateOfJoining,
      'guardianName': instance.guardianName,
      'basicSalary': instance.basicSalary,
      'allowedLeave': instance.allowedLeave,
      'gender': instance.gender,
      'universalAccountNumber': instance.universalAccountNumber,
      'city': instance.city,
      'country': instance.country,
      'tablerow': instance.tablerow,
      'totalSalary': instance.totalSalary,
      'image': instance.image,
      'employeetype': instance.employeetype,
    };
