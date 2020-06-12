import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/platillos/providers/platillos_provider.dart';
import 'package:taxi_pago_app/src/restaurantes/model/restaurant_model.dart';

import '../../../../bottom_icons_icons.dart';

class CardRestaurnteWidget extends StatelessWidget {
  final platillosProvider = new PlatillosProvider();
  Restaurante restaurante = new Restaurante();

  CardRestaurnteWidget(this.restaurante);

  @override
  Widget build(BuildContext context) {
    return _Card(context, restaurante);
  }

  Widget _Card(BuildContext context, Restaurante restaurante) {
    return InkWell(
        child: Container(
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
                        image: AssetImage(restaurante.getPortada()),
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
                          image: AssetImage(restaurante.getLogo()),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, left: 5.0),
                      child: Column(children: <Widget>[
                        Text(
                          restaurante.getNombre(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF353b50)),
                        ),
                        Text(
                          restaurante.tags,
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
                              restaurante.calf,
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
                              restaurante.horario,
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
        ),
        onTap: () {
          // platillosProvider.getPlatillos();
          print(restaurante.getHorario());
          // categoria.setCategoria(categoriaName);
          // categoria.setCatCode(catCode);
          // print(categoria.getCategoria());
          // Navigator.pushNamed(context, this.ruta, arguments: categoria);
          Navigator.pushNamed(context, 'restaurante', arguments: restaurante);

          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
        });
  }
}
