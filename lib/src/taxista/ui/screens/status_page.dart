import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/topbar_widget.dart';

import '../../../../bottom_icons_icons.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 0),
            child: topBarWidget('/'),
          ),
          SizedBox(
            height: 28.0,
          ),
          _TarjetaTaxista(),
          SizedBox(
            height: 20.0,
          ),
          _Mapa(),
        ],
      )),
    );
  }

  Widget _TarjetaTaxista() {
    return InkWell(
      child: Container(
          width: 372.0,
          height: 139,
          margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            color: Color(0xFFF4F2F2),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                ),
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color.fromARGB(82, 0, 0, 0),
                        blurRadius: 30.0,
                        offset: Offset(0.0, 0.0))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img/taxista.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 25.0, left: 20.0, right: 20.0, bottom: 4.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Adrian Fernandez',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF353b50)),
                      ),
                      Container(
                          child: Row(children: <Widget>[
                        Icon(
                          BottomIcons.star,
                          color: Color(0xFFFFB138),
                          size: 19.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 2.0, left: 10.0),
                          child: Text(
                            '4.5',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF353b50)),
                          ),
                        )
                      ])),
                      Text(
                        'No. taxi:523',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF353b50)),
                      ),
                      Text(
                        'Placas:YCA-026',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF353b50)),
                      ),
                      Text(
                        '222-222-2222',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF353b50)),
                      ),
                    ]),
              )
            ],
          )),
      onTap: () {
        // Navigator.pushNamed(context, 'detalleplatillo', arguments: platillo);
      },
    );
  }

  Widget _Mapa() {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 15.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Estatus del Envio',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF353b50)),
            ),
            Container(
              width: 368,
              height: 357,
              margin: EdgeInsets.only(left: 6, top: 10),
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color.fromARGB(30, 0, 0, 0),
                      blurRadius: 10.0,
                      offset: Offset(0.0, 0.0))
                ],
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/map.png'),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Container(
                  child: Center(
                    child: Text(
                      'Actualizar estatus',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  width: 176,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Color(0xFF62B448),
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    shape: BoxShape.rectangle,
                  )),
            )
          ]),
    );
  }
}
