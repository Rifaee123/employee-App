import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_email_verification.g.dart';

@JsonSerializable()
class ForgotPasswordEmailVerification {
  bool? success;
  String? message;

  ForgotPasswordEmailVerification({this.success, this.message});

  factory ForgotPasswordEmailVerification.fromJson(Map<String, dynamic> json) {
    return _$ForgotPasswordEmailVerificationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ForgotPasswordEmailVerificationToJson(this);
  }
}
