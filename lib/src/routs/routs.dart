import 'package:taxi_pago_app/src/ui/screens/home_page.dart';

import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/ui/widgets/navigation_bar.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => NavigationBar(),
  };
}
