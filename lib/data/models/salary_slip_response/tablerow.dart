import 'package:json_annotation/json_annotation.dart';

import 'salary_component.dart';

part 'tablerow.g.dart';

@JsonSerializable()
class Tablerow {
  int? id;
  SalaryComponent? salaryComponent;
  int? percentage;
  String? value;
  int? price;
  @JsonKey(name: '_id')
  String? id1;

  Tablerow({
    this.id,
    this.salaryComponent,
    this.percentage,
    this.value,
    this.price,
    this.id1,
  });

  factory Tablerow.fromJson(Map<String, dynamic> json) {
    return _$TablerowFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TablerowToJson(this);
}
