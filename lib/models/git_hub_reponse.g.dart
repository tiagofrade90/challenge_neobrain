// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_hub_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubReponse _$GitHubReponseFromJson(Map<String, dynamic> json) {
  return GitHubReponse((json['items'] as List)
      ?.map((e) =>
          e == null ? null : Repository.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$GitHubReponseToJson(GitHubReponse instance) =>
    <String, dynamic>{'items': instance.items};
