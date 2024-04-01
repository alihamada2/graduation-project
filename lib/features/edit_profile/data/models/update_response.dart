import 'package:json_annotation/json_annotation.dart';

part 'update_response.g.dart';

@JsonSerializable()
class UpdateResponse {
  String? status;
  @JsonKey(name: "data")
  Data? data;
  UpdateResponse({this.status, this.data});

  factory UpdateResponse.fromJson(Map<String, dynamic> json) =>_$UpdateResponseFromJson(json);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "user")
  User? user;
  Data({this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}



@JsonSerializable()
class User {
  String? role;
  @JsonKey(name: "_id")
  String? sId;
  String? name;
  String? email;
  @JsonKey(name: "__v")
  int? iV;
  User({this.role, this.sId, this.name, this.email, this.iV});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}