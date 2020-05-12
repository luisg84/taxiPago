import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/ui/widgets/avatar_home_widget.dart';
import 'package:taxi_pago_app/src/ui/widgets/card_slide_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(child: Container(height: 20)),
            //Text('prueba'),
            AvatarHomeWidget('assets/img/perfilpicture.jpg',
                'Alejandra Ramirez', 'Cordoba Ver.'),
            SizedBox(
              height: 28.0,
            ),
            _Recomendaciones(),
          ]),
    );
  }

  Widget _Recomendaciones() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 17.0),
          child: Text(
            'Recomendaciones',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w600,
                color: Color(0xFF353b50)),
          ),
        ),
        CardSlideWidget()
      ],
    );
  }
}
