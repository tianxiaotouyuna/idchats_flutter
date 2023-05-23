import 'package:json_annotation/json_annotation.dart';
part 'user_nft_dto.g.dart';
@JsonSerializable()

class UserNftDto {
  final String nft_id;
  final String name;
  final Map previews;

  const UserNftDto({
    required this.nft_id,
    required this.name,
    required this.previews,
  });

  factory UserNftDto.fromJson(Map<String, dynamic> json) => _$UserNftDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserNftDtoToJson(this);
}
