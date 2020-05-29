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
            CatComidaWidget('assets/img/cat_pizza.png', 'Pizza', 'rest', '1'),
            CatComidaWidget('assets/img/cat_cafe.png', 'Café', 'rest', '4')
          ],
        ),
        Column(
          children: <Widget>[
            CatComidaWidget('assets/img/cat_tacos.png', 'Tacos', 'rest', '2'),
            CatComidaWidget(
                'assets/img/cat_fastfood.png', 'Comida rapida', 'rest', '5')
          ],
        ),
        Column(
          children: <Widget>[
            CatComidaWidget(
                'assets/img/cat_antojitos.png', 'Antojitos', 'rest', '3'),
            CatComidaWidget(
                'assets/img/cat_rest.png', 'Restaurant', 'rest', '6')
          ],
        )
      ]),
    ));
  }
}
