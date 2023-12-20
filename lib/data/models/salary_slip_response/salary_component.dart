import 'package:json_annotation/json_annotation.dart';

part 'salary_component.g.dart';

@JsonSerializable()
class SalaryComponent {
  @JsonKey(name: '_id')
  String? id;
  String? salarymasterId;
  String? name;
  String? purpose;
  String? type;
  bool? isdeleted;
  @JsonKey(name: '__v')
  int? v;

  SalaryComponent({
    this.id,
    this.salarymasterId,
    this.name,
    this.purpose,
    this.type,
    this.isdeleted,
    this.v,
  });

  factory SalaryComponent.fromJson(Map<String, dynamic> json) {
    return _$SalaryComponentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalaryComponentToJson(this);
}
