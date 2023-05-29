// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S_LanguageEntity _$S_LanguageEntityFromJson(Map<String, dynamic> json) =>
    S_LanguageEntity(
      json['languageCode'] as String,
      json['countryCode'] as String,
    );

Map<String, dynamic> _$S_LanguageEntityToJson(S_LanguageEntity instance) =>
    <String, dynamic>{
      'languageCode': instance.languageCode,
      'countryCode': instance.countryCode,
    };

S_UserInfoEntity _$S_UserInfoEntityFromJson(Map<String, dynamic> json) =>
    S_UserInfoEntity(
      faceUrl: json['faceUrl'] as String,
      name: json['name'] as String,
      contractAddress: json['contractAddress'] as String,
      ownerCount: json['ownerCount'] as int,
    );

Map<String, dynamic> _$S_UserInfoEntityToJson(S_UserInfoEntity instance) =>
    <String, dynamic>{
      'faceUrl': instance.faceUrl,
      'name': instance.name,
      'contractAddress': instance.contractAddress,
      'ownerCount': instance.ownerCount,
    };
