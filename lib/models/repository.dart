import 'package:json_annotation/json_annotation.dart';
import 'package:challenge_neobrain/models/owner.dart';

part 'repository.g.dart';

@JsonSerializable()
class Repository{
  String name;
  String description;
  @JsonKey(name: "stargazers_count")
  int stars;
  Owner owner;

  Repository(
    this.name, this.description, this.stars, this.owner
  );

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$RepositoryToJson(this);
}