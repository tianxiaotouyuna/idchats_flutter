import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';


class UserInfoDto extends UserInfoEntity {
  const UserInfoDto({required String faceUrl, required String address, required String domail})
      : super(faceUrl: faceUrl, address: address,domail:domail);

  factory UserInfoDto.fromJson(Map<String, dynamic> json) {
    return UserInfoDto(
      faceUrl: json['msg'],
      address: json['msg'],
      domail: json['msg'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'faceUrl': faceUrl, 'address': address, 'domail': domail};
  }
}
