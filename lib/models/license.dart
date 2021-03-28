import 'package:json_annotation/json_annotation.dart';

part 'license.g.dart';


@JsonSerializable()
class License{
  @JsonKey(name: "name")
  String licenseName;

  License(
    this.licenseName
  );

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
  Map<String, dynamic> toJson() => _$LicenseToJson(this);
}