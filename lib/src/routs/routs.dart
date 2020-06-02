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

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => NavigationBar(),
    'restaurante': (BuildContext context) => RestauranteHomePage(),
    // 'tacos': (BuildContext context) => tacosPage(),
    // 'antojitos': (BuildContext context) => antojitosPage(),
    // 'cafe': (BuildContext context) => cafePage(),
    // 'fastfood': (BuildContext context) => fastPage(),
    'rest': (BuildContext context) => restPage(),
  };
}
