// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:convert';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/config/storge/types.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> containsKey(String key) async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.containsKey(key);
  }

  static Future<void> remove(String key) async {
    if (_prefs == null) {
      await init();
    }
    await _prefs!.remove(key);
  }

  static Future<void> clear() async {
    if (_prefs == null) {
      await init();
    }
    await _prefs!.clear();
  }

  static Future<String?> getString(String key) async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.getString(key);
  }

  static Future<void> setString(String key, String value) async {
    if (_prefs == null) {
      await init();
    }
    await _prefs!.setString(key, value);
  }

  static Future<int?> getInt(String key) async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.getInt(key);
  }

  static Future<void> setInt(String key, int value) async {
    if (_prefs == null) {
      await init();
    }
    await _prefs!.setInt(key, value);
  }

  static Future<double?> getDouble(String key) async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.getDouble(key);
  }

  static Future<void> setDouble(String key, double value) async {
    if (_prefs == null) {
      await init();
    }
    await _prefs!.setDouble(key, value);
  }

  static Future<bool?> getBool(String key) async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.getBool(key);
  }

  static Future<void> setBool(String key, bool value) async {
    if (_prefs == null) {
      await init();
    }
    await _prefs!.setBool(key, value);
  }

  static Future<List<String>?> getStringList(String key) async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.getStringList(key);
  }

  static Future<void> setStringList(String key, List<String> value) async {
    if (_prefs == null) {
      await init();
    }
    await _prefs!.setStringList(key, value);
  }

  static Future<void> setLanguageEntiy(entity) async {
     if (_prefs == null) {
      await init();
    }
    final _json = jsonEncode(entity);
    await _prefs!.setString(STORAGE_LANGUAGE, _json);
  }

  static Future<S_LanguageEntity> getLanguageEntiy() async {
     if (_prefs == null) {
      await init();
    }
    final _json = _prefs!.getString(STORAGE_LANGUAGE);
    S_LanguageEntity entity;
    if (_json != null) {
      entity = S_LanguageEntity.fromJson(jsonDecode(_json));
      return entity;
    }
    Locale systemLocale = ui.window.locale;
    return  S_LanguageEntity(systemLocale.languageCode, systemLocale.countryCode??'');
  }

  static Future<UserInfoEntity?> getUserInfoEntiy() async {
    final _json = _prefs!.getString(STORAGE_USERINFO);
    UserInfoEntity entity;
    if (_json != null) {
      entity = jsonDecode(_json);
      return entity;
    }
    return null;
  }
}
