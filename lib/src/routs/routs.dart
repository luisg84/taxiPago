import 'package:taxi_pago_app/src/caja/ui/screens/caja_page.dart';
import 'package:taxi_pago_app/src/pedidos/ui/screens/contenido-pedido_page.dart';
import 'package:taxi_pago_app/src/pedidos/ui/screens/pedidos-home_page.dart';
import 'package:taxi_pago_app/src/platillos/ui/screens/detalle-platillo_page.dart';
import 'package:taxi_pago_app/src/platillos/ui/screens/restaurante-home_page.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/screens/antojitos_page.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/screens/cafe_page.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/screens/fastfood_page.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/screens/home_page.dart';

import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/screens/pizza_page.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/screens/rest_page.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/screens/tacos_page.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/navigation_bar.dart';
import 'package:taxi_pago_app/src/taxista/ui/screens/status_page.dart';
import 'package:taxi_pago_app/src/usuario/ui/screens/usuario_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => NavigationBar(),
    'restaurante': (BuildContext context) => RestauranteHomePage(),
    // 'tacos': (BuildContext context) => tacosPage(),
    // 'antojitos': (BuildContext context) => antojitosPage(),
    // 'cafe': (BuildContext context) => cafePage(),
    // 'fastfood': (BuildContext context) => fastPage(),
    'detalleplatillo': (BuildContext context) => DetallePlatilloPage(),
    'rest': (BuildContext context) => restPage(),

    /// Pedidos
    'pedidoshome': (BuildContext context) => PedidosHomePage(),
    'contenidopedido': (BuildContext context) => ContenidoPedidoPage(),
    'status': (BuildContext context) => StatusPage(),
    'caja': (BuildContext context) => CajaPage(),
    'usuario': (BuildContext context) => UsuarioPage(),
  };
}
