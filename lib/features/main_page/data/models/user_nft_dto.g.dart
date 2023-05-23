// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_nft_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserNftDto _$UserNftDtoFromJson(Map<String, dynamic> json) => UserNftDto(
      nft_id: json['nft_id'] as String,
      name: json['name'] as String,
      previews: json['previews'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$UserNftDtoToJson(UserNftDto instance) =>
    <String, dynamic>{
      'nft_id': instance.nft_id,
      'name': instance.name,
      'previews': instance.previews,
    };
