import 'package:taxi_pago_app/src/ui/screens/antojitos_page.dart';
import 'package:taxi_pago_app/src/ui/screens/cafe_page.dart';
import 'package:taxi_pago_app/src/ui/screens/fastfood_page.dart';
import 'package:taxi_pago_app/src/ui/screens/home_page.dart';

import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/ui/screens/pizza_page.dart';
import 'package:taxi_pago_app/src/ui/screens/rest_page.dart';
import 'package:taxi_pago_app/src/ui/screens/tacos_page.dart';
import 'package:taxi_pago_app/src/ui/widgets/navigation_bar.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => NavigationBar(),
    'pizza': (BuildContext context) => pizzaPage(),
    'tacos': (BuildContext context) => tacosPage(),
    'antojitos': (BuildContext context) => antojitosPage(),
    'cafe': (BuildContext context) => cafePage(),
    'fastfood': (BuildContext context) => fastPage(),
    'rest': (BuildContext context) => restPage(),
  };
}
