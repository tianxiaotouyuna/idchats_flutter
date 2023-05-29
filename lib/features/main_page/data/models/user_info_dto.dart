import 'package:json_annotation/json_annotation.dart';
part 'user_info_dto.g.dart';
@JsonSerializable()

class UserInfoDto  {
  final String name;
  final String contract_address;
  final int owner_count;

  UserInfoDto({
    required this.name,
    required this.contract_address,
    required this.owner_count,
  });

  factory UserInfoDto.fromJson(Map<String, dynamic> json) => _$UserInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoDtoToJson(this);
}
