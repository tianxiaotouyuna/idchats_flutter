// ignore_for_file: camel_case_types
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'types.g.dart';

@JsonSerializable()
class S_LanguageEntity extends Equatable {
  final String languageCode;
  final String countryCode;
  const S_LanguageEntity(this.languageCode, this.countryCode);

  factory S_LanguageEntity.fromJson(Map<String, dynamic> json) =>
      _$S_LanguageEntityFromJson(json);
  Map<String, dynamic> toJson() => _$S_LanguageEntityToJson(this);
  @override
  List<Object?> get props => [languageCode, countryCode];
}
@JsonSerializable()
class S_UserInfoEntity extends Equatable {
  final String faceUrl;
  final String name;
  final String contractAddress;
  final int ownerCount;

  const S_UserInfoEntity({
    required this.faceUrl,
    required this.name,
    required this.contractAddress,
    required this.ownerCount,
  });

  factory S_UserInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$S_UserInfoEntityFromJson(json);
  Map<String, dynamic> toJson() => _$S_UserInfoEntityToJson(this);

  @override
  List<Object?> get props => [name, contractAddress,ownerCount];
}
