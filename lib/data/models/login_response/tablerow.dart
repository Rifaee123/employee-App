import 'package:json_annotation/json_annotation.dart';
import 'package:muhammad_s_application3/core/app_export.dart';

part 'tablerow.g.dart';

@JsonSerializable()
class Tablerows {
  String? salaryComponent;
  int? percentage;
  String? value;
  int? price;
  int? id;
  RxBool isExpand = false.obs;

  Tablerows(
      {this.salaryComponent, this.percentage, this.value, this.price, this.id});

  factory Tablerows.fromJson(Map<String, dynamic> json) {
    return _$TablerowsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TablerowsToJson(this);
}
