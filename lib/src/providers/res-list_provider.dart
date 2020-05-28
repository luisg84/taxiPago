import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _ResListProvider {
  List<dynamic> restaurantes = [];

  _ResListProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/res_list.json');

    Map dataMap = json.decode(resp);

    restaurantes = dataMap['restaurantes'];

    return restaurantes;
  }
}

final resListProvider = new _ResListProvider();
