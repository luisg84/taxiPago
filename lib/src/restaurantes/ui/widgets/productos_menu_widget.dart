import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/card_producto_widget.dart';

class productosMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0,
      child: ListView(
        padding: EdgeInsets.all(2.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          cardProductoWidget('assets/img/cat_tienda.png', 'Tiendas'),
          cardProductoWidget('assets/img/cat_farmacia.png', 'Farmacias')
        ],
      ),
    );
  }
}
