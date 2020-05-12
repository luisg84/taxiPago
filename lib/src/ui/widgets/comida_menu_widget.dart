import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/ui/widgets/cat_comida_widget.dart';

class ComidaMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      child:
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
        Column(
          children: <Widget>[
            CatComidaWidget('assets/img/cat_pizza.png', 'Pizza', 'pizza'),
            CatComidaWidget('assets/img/cat_cafe.png', 'Café', 'cafe')
          ],
        ),
        Column(
          children: <Widget>[
            CatComidaWidget('assets/img/cat_tacos.png', 'Tacos', 'tacos'),
            CatComidaWidget(
                'assets/img/cat_fastfood.png', 'Comida rapida', 'fastfood')
          ],
        ),
        Column(
          children: <Widget>[
            CatComidaWidget(
                'assets/img/cat_antojitos.png', 'Antojitos', 'antojitos'),
            CatComidaWidget('assets/img/cat_rest.png', 'Restaurant', 'rest')
          ],
        )
      ]),
    ));
  }
}
