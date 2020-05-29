import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/model/restaurant_model.dart';

import '../../../bottom_icons_icons.dart';

class SliverListRestaurantes extends StatelessWidget {
  final List<Restaurante> restaurantes;
  String catCode = '0';

  SliverListRestaurantes({@required this.restaurantes, this.catCode});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(_listaRestaurantes(this.catCode)));

    /*  Container(
      child: Column(children: <Widget>[
        Text(restaurantes[1].getNombre()),
      ]),
    ); */
  }

  List<Widget> _listaRestaurantes(String catCode) {
    final List<Widget> restaurantesList = [];
    int i = 0;
    restaurantes.forEach((opt) {
      // aqui se desarrolla el widget que se estara repitiendo
      if (catCode == restaurantes[i].getCatCode()) {
        final widgetTemp = Container(
          width: 340.0,
          height: 230,
          margin:
              EdgeInsets.only(top: 5.0, left: 30.0, right: 30.0, bottom: 4.0),
          // decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //     shape: BoxShape.rectangle,
          //     boxShadow: <BoxShadow>[
          //       BoxShadow(
          //           color: Color.fromARGB(60, 0, 0, 0),
          //           blurRadius: 10.0,
          //           offset: Offset(0.0, 0.0))
          //     ]),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: 360,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(restaurantes[i].getPortada()),
                      ),
                    ),
                  ),
                  Container(
                    width: 360,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        shape: BoxShape.rectangle,
                        color: Color.fromARGB(83, 53, 59, 80)),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0, left: 0.0),
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0.0, left: 0.0),
                      width: 35.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(restaurantes[i].getLogo()),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, left: 5.0),
                      child: Column(children: <Widget>[
                        Text(
                          restaurantes[i].getNombre(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF353b50)),
                        ),
                        Text(
                          restaurantes[i].tags,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF353b50)),
                        ),
                      ]),
                    )
                  ]),
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 10.0),
                    child: Row(
                      children: <Widget>[
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
                              restaurantes[i].calf,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF353b50)),
                            ),
                          )
                        ])),
                        SizedBox(
                          width: 13.0,
                        ),
                        Container(
                            child: Row(children: <Widget>[
                          Icon(
                            BottomIcons.clock,
                            color: Color(0xFF353B50),
                            size: 19.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 2.0, left: 10.0),
                            child: Text(
                              restaurantes[i].horario,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF353b50)),
                            ),
                          )
                        ]))
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
        );

        // Text(restaurantes[i].getNombre(),
        //     style: TextStyle(
        //         fontSize: 20.0,
        //         fontFamily: 'Avenir',
        //         fontWeight: FontWeight.w600,
        //         color: Color(0xFF353b50)));

        restaurantesList.add(widgetTemp);
      }

      i++;
    });
    return restaurantesList;
  }
}
