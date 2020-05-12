import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/ui/widgets/recomendaciones_card_widget.dart';

class CardSlideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView(
        padding: EdgeInsets.all(2.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          RecomendacionesCardWidget(Color(0xFFffb138),
              'assets/img/recomendacion_desayuno.png', 'Desayunos'),
          RecomendacionesCardWidget(Color(0xFF62b448),
              'assets/img/recomendacion_comida.png', 'Comidas'),
          RecomendacionesCardWidget(Color(0xFFffb138),
              'assets/img/recomendacion_desayuno.png', 'Desayuno')
        ],
      ),
    );
  }
}
