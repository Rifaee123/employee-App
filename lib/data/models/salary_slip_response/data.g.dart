// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      name: json['name'] as String?,
      designation: json['designation'] as String?,
      earnings: json['earnings'] as String?,
      deductions: json['deductions'] as String?,
      basicpay: json['basicpay'] as String?,
      netpay: json['netpay'] as int?,
      tablerow: (json['tablerow'] as List<dynamic>?)
          ?.map((e) => Tablerow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'name': instance.name,
      'designation': instance.designation,
      'earnings': instance.earnings,
      'deductions': instance.deductions,
      'basicpay': instance.basicpay,
      'netpay': instance.netpay,
      'tablerow': instance.tablerow,
    };
