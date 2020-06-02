import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:taxi_pago_app/src/platillos/model/platillos_model.dart';

class PlatillosProvider {
  String _apikey = '';
  String _url = '';
  String _language = '';

  Future<List<Platillo>> getPlatillos() async {
    //en esta parte se lee el archivo Json de dpnde estoy mandando la data local, cuando conecte los servicios eston se tiene que cambiar por el metodo Uri.https() en la que armo el url para luego hacer la peticion http, esta se isntala ya que dart no la trae (Peliculas provider min 4):
    final resp = await rootBundle.loadString('data/platillo-list.json');
    final decodedData = json.decode(resp);

    final platillos = new Platillos.fromJsonList(decodedData['platillos']);

    return platillos.items;
  }
}
