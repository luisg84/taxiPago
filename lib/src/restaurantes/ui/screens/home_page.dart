import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/avatar_home_widget.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/card_slide_widget.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/comida_menu_widget.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/productos_menu_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(child: Container(height: 5)),

              //ListView(),
              //Text('prueba'),
              AvatarHomeWidget('assets/img/perfilpicture.jpg',
                  'Alejandra Ramirez', 'Cordoba Ver.'),
              SizedBox(
                height: 28.0,
              ),
              _Recomendaciones(),
              SizedBox(
                height: 10.0,
              ),
              _Comida(),
              SizedBox(
                height: 10.0,
              ),
              _Productos()
            ]),
      ),
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

  Widget _Comida() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 17.0),
          child: Text(
            'Comida',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w600,
                color: Color(0xFF353b50)),
          ),
        ),
        ComidaMenuWidget(),
        //CardSlideWidget()
      ],
    );
  }

  Widget _Productos() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 17.0),
          child: Text(
            'Productos',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w600,
                color: Color(0xFF353b50)),
          ),
        ),
        productosMenuWidget()
        //CardSlideWidget()
      ],
    );
  }
}
