import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/restaurantes/model/restaurant_model.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/card_restaurante_widget.dart';

import '../../../../bottom_icons_icons.dart';

class SliverListRestaurantes extends StatelessWidget {
  final List<Restaurante> restaurantes;
  String catCode = '0';
  Restaurante restaurante = new Restaurante();

  SliverListRestaurantes({@required this.restaurantes, this.catCode});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate:
            SliverChildListDelegate(_listaRestaurantes(this.catCode, context)));

    /*  Container(
      child: Column(children: <Widget>[
        Text(restaurantes[1].getNombre()),
      ]),
    ); */
  }

  List<Widget> _listaRestaurantes(String catCode, BuildContext context) {
    final List<Widget> restaurantesList = [];
    int i = 0;
    int index = 0;
    restaurantes.forEach((opt) {
      // aqui se desarrolla el widget que se estara repitiendo
      if (catCode == restaurantes[i].getCatCode()) {
        final widgetTemp = CardRestaurnteWidget(restaurantes[i]);

        // Text(restaurantes[i].getNombre(),
        //     style: TextStyle(
        //         fontSize: 20.0,
        //         fontFamily: 'Avenir',
        //         fontWeight: FontWeight.w600,
        //         color: Color(0xFF353b50)));

        restaurantesList.add(widgetTemp);
      }

      i++;
    });
    return restaurantesList;
  }
}
