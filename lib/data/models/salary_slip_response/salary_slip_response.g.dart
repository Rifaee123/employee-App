// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_slip_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalarySlipResponse _$SalarySlipResponseFromJson(Map<String, dynamic> json) =>
    SalarySlipResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SalarySlipResponseToJson(SalarySlipResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
