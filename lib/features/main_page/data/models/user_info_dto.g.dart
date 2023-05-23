// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoDto _$UserInfoDtoFromJson(Map<String, dynamic> json) => UserInfoDto(
      name: json['name'] as String,
      contract_address: json['contract_address'] as String,
      owner_count: json['owner_count'] as int,
    );

Map<String, dynamic> _$UserInfoDtoToJson(UserInfoDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'contract_address': instance.contract_address,
      'owner_count': instance.owner_count,
    };
