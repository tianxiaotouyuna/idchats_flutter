// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleDto _$ExampleDtoFromJson(Map<String, dynamic> json) => ExampleDto(
      nft_id: json['nft_id'] as String,
      name: json['name'] as String,
      previews: json['previews'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ExampleDtoToJson(ExampleDto instance) =>
    <String, dynamic>{
      'nft_id': instance.nft_id,
      'name': instance.name,
      'previews': instance.previews,
    };
