// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tablerow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tablerow _$TablerowFromJson(Map<String, dynamic> json) => Tablerow(
      id: json['id'] as int?,
      salaryComponent: json['salaryComponent'] == null
          ? null
          : SalaryComponent.fromJson(
              json['salaryComponent'] as Map<String, dynamic>),
      percentage: json['percentage'] as int?,
      value: json['value'] as String?,
      price: json['price'] as int?,
      id1: json['_id'] as String?,
    );

Map<String, dynamic> _$TablerowToJson(Tablerow instance) => <String, dynamic>{
      'id': instance.id,
      'salaryComponent': instance.salaryComponent,
      'percentage': instance.percentage,
      'value': instance.value,
      'price': instance.price,
      '_id': instance.id1,
    };
