// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository(
      json['name'] as String,
      json['description'] as String,
      json['stargazers_count'] as int,
      json['language'] as String,
      json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>));
}

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.stars,
      'language': instance.language,
      'owner': instance.owner,
      'license': instance.license
    };
