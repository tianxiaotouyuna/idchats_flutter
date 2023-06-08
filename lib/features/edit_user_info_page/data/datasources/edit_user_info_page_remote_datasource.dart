// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:idchats_flutter/core/config/constants/api_path.dart';
import 'package:idchats_flutter/core/config/error/exceptions.dart';
import 'package:idchats_flutter/features/edit_user_info_page/domain/repository/request_types.dart';

// ignore: constant_identifier_names
const REACT_APP_SIMPLE_HASH_API_KEY =
    'tally_sk_428718ba-abc9-453a-af95-fd07d046f115_cp3n5shchhcf05xk';

abstract class EditUserInfoPageRemoteDataSource {
  Future<Map> getEmailCode(GetEmailCodeParams params);
}

class EditUserInfoPageRemoteDataSourceImpl
    implements EditUserInfoPageRemoteDataSource {
  final http.Client client;

  EditUserInfoPageRemoteDataSourceImpl({required this.client});

  Future<Map> _get(String url, Map params) async {
    final response = await client.get(Uri.parse(url), headers: {
      'accept': 'application/json',
      'X-API-KEY': REACT_APP_SIMPLE_HASH_API_KEY
    });
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw ServerException();
    }
  }

  Future<Map> _post(String url, Map params) async {
    final response = await http.post(
      Uri.parse(url),
      body:params,
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Map> getEmailCode(GetEmailCodeParams params) =>
      _post('$BASE_HOST_V3/graph/getEmailCode', {'emailAddress':params.emailAddress});
}
