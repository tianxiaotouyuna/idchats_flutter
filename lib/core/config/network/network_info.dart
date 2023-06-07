import 'dart:async';

import 'package:http/http.dart' as http;

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {

  @override
  Future<bool> get isConnected => hasConnection;

    Future<bool> get hasConnection async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    var response = await http.get(url);
    final Completer<bool> result = Completer<bool>();
    if (response.statusCode == 200) {
      // do something with the response
              result.complete(true);
    } else {
              result.complete(false);
      // throw Exception('Failed to load data');
    }
    return result.future;
    }

  }
