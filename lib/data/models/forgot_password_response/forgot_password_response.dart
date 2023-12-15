import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_response.g.dart';

@JsonSerializable()
class ForgotPasswordResponse {
  bool? success;
  String? message;

  ForgotPasswordResponse({this.success, this.message});

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) {
    return _$ForgotPasswordResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ForgotPasswordResponseToJson(this);
}
