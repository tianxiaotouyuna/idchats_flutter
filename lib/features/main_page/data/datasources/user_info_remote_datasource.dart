import 'dart:convert';

import 'package:idchats_flutter/core/constants/api_path.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/features/main_page/data/models/user_info_dto.dart';

import '../../../../core/error/exceptions.dart';
import 'package:http/http.dart' as http;

abstract class UserInfoRemoteDataSource {
  Future<UserInfoDto> getUserInfo(String userId);
}

class UserInfoRemoteDataSourceImpl implements UserInfoRemoteDataSource {
  final http.Client client;

  UserInfoRemoteDataSourceImpl({required this.client});

  Future<UserInfoDto> _getUserInfo(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      return UserInfoDto.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<UserInfoDto> getUserInfo(String userId) =>
      // _getUserInfo(GET_USER_INFO+'?account='+userId);
      _getUserInfo('$GET_USER_INFO?account=main');
}
