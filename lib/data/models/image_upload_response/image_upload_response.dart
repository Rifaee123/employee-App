import 'package:json_annotation/json_annotation.dart';

part 'image_upload_response.g.dart';

@JsonSerializable()
class ImageUploadResponse {
  bool? success;
  String? message;
  String? data;

  ImageUploadResponse({this.success, this.message, this.data});

  factory ImageUploadResponse.fromJson(Map<String, dynamic> json) {
    return _$ImageUploadResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ImageUploadResponseToJson(this);
}
