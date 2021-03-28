import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';


@JsonSerializable()
class Owner{
  @JsonKey(name: "login")
  String name;
  String avatar_url;

  Owner(
    this.name, this.avatar_url
  );

  factory Owner.fromJson(Map<String, dynamic> json) =>
      _$OwnerFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}