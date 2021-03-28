import 'package:json_annotation/json_annotation.dart';
import 'package:challenge_neobrain/models/owner.dart';
import 'package:challenge_neobrain/models/license.dart';

part 'repository.g.dart';

@JsonSerializable()
class Repository{
  String name;
  String description;
  @JsonKey(name: "stargazers_count")
  int stars;
  String language;
  Owner owner;
  License license;

  Repository(
    this.name, this.description, this.stars, this.language, this.owner, this.license
  );

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$RepositoryToJson(this);
}