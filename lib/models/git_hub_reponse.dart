import 'package:challenge_neobrain/models/repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'git_hub_reponse.g.dart';


@JsonSerializable()
class GitHubReponse{
  List<Repository> items;

  GitHubReponse(this.items);

  factory GitHubReponse.fromJson(Map<String, dynamic> json) =>
      _$GitHubReponseFromJson(json);
  Map<String, dynamic> toJson() => _$GitHubReponseToJson(this);
}

