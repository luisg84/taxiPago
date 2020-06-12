import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:taxi_pago_app/src/pedidos/model/pedidos_model.dart';
import 'package:taxi_pago_app/src/platillos/model/platillos_model.dart';
import 'package:taxi_pago_app/src/restaurantes/model/restaurant_model.dart';

class PedidosProvider {
  String _apikey = '';
  String _url = '';
  String _language = '';

  Future<List<Pedido>> getPedidos() async {
    //en esta parte se lee el archivo Json de dpnde estoy mandando la data local, cuando conecte los servicios eston se tiene que cambiar por el metodo Uri.https() en la que armo el url para luego hacer la peticion http, esta se isntala ya que dart no la trae (Peliculas provider min 4):
    final resp = await rootBundle.loadString('data/pedido-list.json');
    final decodedData = json.decode(resp);

    final pedidos = new Pedidos.fromJsonList(decodedData['pedidos']);
    // print(restaurantes.items[0].nombre);
    return pedidos.items;
  }
}
