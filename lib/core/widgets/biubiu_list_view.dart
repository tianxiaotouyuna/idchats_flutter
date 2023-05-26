import 'dart:convert';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:idchats_flutter/core/config/constants/api_path.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';

// ignore: constant_identifier_names
const REACT_APP_SIMPLE_HASH_API_KEY =
    'tally_sk_428718ba-abc9-453a-af95-fd07d046f115_cp3n5shchhcf05xk';
// ignore: camel_case_types
typedef NullableIndexedWidgetBuilder_biubiu = Widget? Function(
    BuildContext context, int index, Map item);

class BiuBiuListView extends StatefulWidget {
  final ListViewParams params;
  final NullableIndexedWidgetBuilder_biubiu itemBuilder;
  final String resultDataKey; //返回data的key
  final String cursorKey; //分页key

  const BiuBiuListView({
    Key? key,
    required this.params,
    required this.itemBuilder,
    this.resultDataKey = 'list',
    this.cursorKey = 'page',
  }) : super(key: key);
  @override
  _BiuBiuListViewState createState() => _BiuBiuListViewState();
}

class _BiuBiuListViewState extends State<BiuBiuListView> {
  // ignore: prefer_final_fields
  List _data = [];
  // ignore: prefer_final_fields
  int _pageNumber = 1;
  final EasyRefreshController _controller = EasyRefreshController(
    controlFinishRefresh: false,
    controlFinishLoad: false,
  );
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // do something
      print("Build Completed");
      _controller.callRefresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    return EasyRefresh(
      controller: _controller,
      onRefresh: () => onRefresh(),
      onLoad: () => onLoadMore(),
      header: const MaterialHeader(color: MAIN_BACKGROUND_COLOR),
      footer: const MaterialFooter(color: MAIN_BACKGROUND_COLOR),
      child: renderList(),
    );
  }

  Widget renderList() {
    return ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return widget.itemBuilder(context, index, _data[index]);
        });
  }

  onRefresh() async {
    _pageNumber = 1;
    String url =
        '$HASH_HOST?chains=${widget.params.params['chains']}&wallet_addresses=${widget.params.params['address']}&${widget.cursorKey}=${_pageNumber}';
    Map resp = await _get(url, widget.params.params);
    List data = resp[widget.resultDataKey];

    setState(() {
      _data = data;
    });
    // 标记刷新完成
    _controller.controlFinishLoad;
  }

  onLoadMore() async {
    _pageNumber += 1;
    String url =
        '$HASH_HOST?chains=${widget.params.params['chains']}&wallet_addresses=${widget.params.params['address']}&${widget.cursorKey}=${_pageNumber}';
    Map resp = await _get(url, widget.params.params);
    List data = resp[widget.resultDataKey];

    List combinedList = [..._data, ...data];
    setState(() {
      _data = combinedList;
    });
    // 标记刷新完成
    _controller.controlFinishLoad;
  }

  Future<Map> _get(String url, Map params) async {
    http.Client client = http.Client();
    final response = await client.get(Uri.parse(url), headers: {
      'accept': 'application/json',
      'X-API-KEY': REACT_APP_SIMPLE_HASH_API_KEY
    });
    if (response.statusCode == 200) {
      Map res = json.decode(response.body);
      return res;
    } else {
      throw ServerException();
    }
  }
}

class ServerException implements Exception {}

class CacheException implements Exception {}

class ListViewParams extends Equatable {
  final String apiRoute;
  final dynamic params;
  const ListViewParams(this.apiRoute, this.params);
  @override
  List<Object?> get props => [apiRoute, params];
}
