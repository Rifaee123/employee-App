// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalaryComponent _$SalaryComponentFromJson(Map<String, dynamic> json) =>
    SalaryComponent(
      id: json['_id'] as String?,
      salarymasterId: json['salarymasterId'] as String?,
      name: json['name'] as String?,
      purpose: json['purpose'] as String?,
      type: json['type'] as String?,
      isdeleted: json['isdeleted'] as bool?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$SalaryComponentToJson(SalaryComponent instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'salarymasterId': instance.salarymasterId,
      'name': instance.name,
      'purpose': instance.purpose,
      'type': instance.type,
      'isdeleted': instance.isdeleted,
      '__v': instance.v,
    };
