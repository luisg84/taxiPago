import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/model/restaurant_model.dart';

class SliverListRestaurantes extends StatelessWidget {
  final List<Restaurante> restaurantes;

  SliverListRestaurantes({@required this.restaurantes});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate(_listaRestaurantes()));

    /*  Container(
      child: Column(children: <Widget>[
        Text(restaurantes[1].getNombre()),
      ]),
    ); */
  }

  List<Widget> _listaRestaurantes() {
    final List<Widget> restaurantesList = [];
    int i = 0;
    restaurantes.forEach((opt) {
      final widgetTemp = Container(
        width: 340.0,
        height: 200,
        margin: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color.fromARGB(60, 0, 0, 0),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 0.0))
            ]),
        child: Column(
          children: <Widget>[Container()],
        ),
      );

      // Text(restaurantes[i].getNombre(),
      //     style: TextStyle(
      //         fontSize: 20.0,
      //         fontFamily: 'Avenir',
      //         fontWeight: FontWeight.w600,
      //         color: Color(0xFF353b50)));

      restaurantesList.add(widgetTemp);
      i++;
    });
    return restaurantesList;
  }
}
