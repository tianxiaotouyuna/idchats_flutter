
// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_element

import 'package:idchats_flutter/core/config/storge/storage.dart';
import 'package:idchats_flutter/core/config/storge/types.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';

class APPSingleton {
  // make this nullable by adding '?'
  static APPSingleton? _instance;
  S_LanguageEntity languageEntity;
  UserInfoEntity? userInfoEntity;

  APPSingleton._(
      {this.languageEntity = const S_LanguageEntity('en', 'US'),
      this.userInfoEntity});
  init() async {
    S_LanguageEntity _languageEntity = await Storage.getLanguageEntiy();
    languageEntity = _languageEntity;
    UserInfoEntity? _userInfoEntity = await Storage.getUserInfoEntiy();
    userInfoEntity = _userInfoEntity;
  }

  factory APPSingleton() {
    // ignore: unnecessary_new
    _instance ??= new APPSingleton._();
    // since you are sure you will return non-null value, add '!' operator
    return _instance!;
  }
}
