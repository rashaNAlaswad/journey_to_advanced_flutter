import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? message;
  Data? data;
  bool? status;
  int? code;

  SignUpResponse({this.message, this.data, this.status, this.code});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class Data {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  Data({this.token, this.userName});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
