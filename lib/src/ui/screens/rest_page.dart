import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/ui/widgets/avatar_home_widget.dart';
import 'package:taxi_pago_app/src/ui/widgets/recomendaciones_card_widget.dart';
import 'package:taxi_pago_app/src/ui/widgets/topbar_widget.dart';

class restPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          /*   SafeArea(child: Container(height: 5)), */
          topBarWidget(),
          SizedBox(
            height: 28.0,
          ),
          _Titulo(),
          _lugares(),
        ]));
  }

  Widget _lugares() {
    return Stack(
      children: <Widget>[
        ListView(children: <Widget>[
          RecomendacionesCardWidget(Color(0xFFffb138),
              'assets/img/recomendacion_desayuno.png', 'Desayunos'),
        ])
      ],
    );
  }

  Widget _Titulo() {
    return Container(
      margin: EdgeInsets.only(left: 17.0),
      child: Text(
        'Restaurantes',
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w600,
            color: Color(0xFF353b50)),
      ),
    );
  }
}
