import 'package:flutter/material.dart';

class RecomendacionesCardWidget extends StatelessWidget {
  Color colorCard = const Color(0xFF353b50);
  String pathImage = 'assets/img/recomendacion_desayuno.png';
  String categoria = 'Desayunos';

  RecomendacionesCardWidget(this.colorCard, this.pathImage, this.categoria);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.0, 0.1),
      children: <Widget>[_card(), _contend()],
    );
  }

  Widget _card() {
    return Container(
      height: 157,
      width: 260,
      margin: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: this.colorCard,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );
  }

  Widget _contend() {
    return Row(
      children: <Widget>[
        Container(
          width: 117,
          height: 117,
          child: Image(image: AssetImage(this.pathImage)),
        ),
        Text(
          this.categoria,
          style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w600,
              color: Color(0xFF353b50)),
        )
      ],
    );
  }
}
