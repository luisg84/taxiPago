import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/platillos/providers/platillos_provider.dart';
import 'package:taxi_pago_app/src/platillos/ui/screens/sliver-list_platillos.dart';
import 'package:taxi_pago_app/src/platillos/ui/widgets/platillo-card_widget.dart';
import 'package:taxi_pago_app/src/restaurantes/model/restaurant_model.dart';

import '../../../../bottom_icons_icons.dart';

class RestauranteHomePage extends StatelessWidget {
  final platillosProvider = new PlatillosProvider();

  RestauranteHomePage();

  @override
  Widget build(BuildContext context) {
    final Restaurante restaurante = ModalRoute.of(context).settings.arguments;
    print(restaurante.getPortada());
    return Scaffold(
      body: _Barra(restaurante),
    );
  }

  Widget _Barra(Restaurante restaurante) {
    print(restaurante.getPortada());
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        floating: true,
        pinned: true,
        primary: true,
        elevation: 0,
        expandedHeight: 250.0,
        backgroundColor: Color(0xFF62B448),
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text(''),
          background: TopBar(restaurante),
        ),
      ),
      _listaPlatillos(),
    ]);
  }

  Widget TopBar(Restaurante restaurante) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          width: 800,
          child: FadeInImage(
            placeholder: AssetImage('assets/img/default.png'),
            image: AssetImage(restaurante.getPortada()),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 800,
          decoration: BoxDecoration(color: Color.fromARGB(140, 23, 23, 23)),
        ),
        Positioned(
          bottom: -110,
          left: 20,
          child: Container(
            width: 340.0,
            height: 230,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    restaurante.getNombre(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 23.0,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF)),
                  ),
                  Text(
                    restaurante.getTags(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFFFFFFF)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0.0, left: 10.0),
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
                            margin: EdgeInsets.only(top: 0.0, left: 10.0),
                            child: Text(
                              restaurante.calf,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          )
                        ])),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                            child: Row(children: <Widget>[
                          Icon(
                            BottomIcons.clock,
                            color: Color(0xFFFFFFFF),
                            size: 19.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 2.0, left: 10.0),
                            child: Text(
                              restaurante.horario,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          )
                        ]))
                      ],
                    ),
                  )
                ]),
          ),
        )
      ],
    );
  }

  Widget _listaPlatillos() {
    return FutureBuilder(
      future: platillosProvider.getPlatillos(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return SliverListPlatillos(
            platillos: snapshot.data,
          );
        } else {
          return SliverList(
              delegate: SliverChildListDelegate([
            Container(
                height: 400.0,
                child: Center(child: CircularProgressIndicator()))
          ]));
        }
      },
    );
    // final List<Widget> platillosList = [];
    // platillosList.add(PlatilloCardWidget());

    // return platillosList;
  }
}
