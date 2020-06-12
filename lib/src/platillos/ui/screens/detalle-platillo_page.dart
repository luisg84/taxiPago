import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/platillos/model/platillos_model.dart';
import 'package:taxi_pago_app/src/platillos/ui/widgets/number-piker_widget.dart';

import '../../../../bottom_icons_icons.dart';

class DetallePlatilloPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Platillo platillo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: _SliverBar(platillo),
      //     body: Container(
      //   child: Text(platillo.getNombre()),
      // )
    );
  }

  Widget _SliverBar(Platillo platillo) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          pinned: true,
          primary: true,
          elevation: 0,
          expandedHeight: 220.0,
          backgroundColor: Color(0xFF62B448),
          flexibleSpace: FlexibleSpaceBar(
            background: TopBar(platillo),
          ),
        ),
        _detalles(platillo),
      ],
    );
  }

  Widget TopBar(Platillo platillo) {
    return Container(
      child: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
            height: 260,
            width: 800,
            child: FadeInImage(
              placeholder: AssetImage('assets/img/default.png'),
              image: AssetImage(platillo.getFoto()),
              fit: BoxFit.cover,
            )),
        Container(
          width: 800,
          height: 260,
          decoration: BoxDecoration(color: Color.fromARGB(100, 23, 23, 23)),
        ),
      ]),
    );
  }

  Widget _detalles(Platillo platillo) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Container(
        margin: EdgeInsets.only(
          left: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      platillo.getNombre(),
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF353b50)),
                    ),
                    Text(
                      platillo.getTags(),
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF353b50)),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        platillo.getdescripcion(),
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Avenir',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            BottomIcons.dollar,
                            color: Color(0xFF353B50),
                            size: 30.0,
                          ),
                          Text(
                            platillo.getPrecio(),
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Avenir',
                              color: Color(0xFF353B50),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 170,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          NumberPikerWidget(),
                          SizedBox(
                            width: 50.0,
                          ),
                          InkWell(
                            child: Container(
                              height: 40,
                              width: 174,
                              decoration: BoxDecoration(
                                color: Color(0xFFFAAD2E),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: Center(
                                child: Row(children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Icon(
                                      BottomIcons.shopping_basket_solid,
                                      color: Color(0xFFFFFFFF),
                                      size: 15.0,
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 15),
                                      child: Center(
                                        child: Text(
                                          'Agregar a la caja',
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 14,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ))
                                ]),
                              ),
                            ),
                            onTap: () {},
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      )
    ]));
  }
}
