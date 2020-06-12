import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/pedidos/model/pedidos_model.dart';
import 'package:taxi_pago_app/src/pedidos/providers/pedidos_providers.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/avatar_home_widget.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/topbar_widget.dart';

import '../../../../bottom_icons_icons.dart';

class ContenidoPedidoPage extends StatelessWidget {
  final pedidosProvider = new PedidosProvider();

  @override
  Widget build(BuildContext context) {
    final Pedido pedido = ModalRoute.of(context).settings.arguments;
    prueba(pedido.getContenido());
    return Scaffold(
      body: _torre(context, pedido),
    );
  }

  Widget _torre(BuildContext context, Pedido pedido) {
    return Stack(children: <Widget>[
      _contenido(pedido),
      Positioned(
        width: 450,
        height: 100,
        child: _bottonInfo(context, pedido),
        bottom: 0,
      )
    ]);
  }

  Widget _contenido(Pedido pedido) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: Container(),
          floating: true,
          pinned: true,
          primary: true,
          centerTitle: false,
          actionsIconTheme: IconThemeData(color: Colors.black12),
          brightness: Brightness.light,
          backgroundColor: Color(0xFFFf9faf9),
          elevation: 0,
          expandedHeight: 180.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Container(
              margin: EdgeInsets.only(right: 150.0),
              child: Text(
                pedido.getNumero(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF353b50)),
              ),
            ),
            background: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /*   SafeArea(child: Container(height: 5)), */
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: topBarWidget('/'),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                ]),
          ),
        ),
        // _Lista()
      ],
    );
  }

  prueba(List contenido) {
    final List contenidoList = contenido;
    print(contenido);
    int i = 0;

    // contenido.forEach((opt) {
    //   print(contenido[i]);
    // });
  }

  Widget _Lista() {}

  Widget _bottonInfo(BuildContext context, Pedido pedido) {
    return Container(
      // width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFF62B448),
      ),
      child: Center(
          child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Row(children: <Widget>[
              Text(
                'Total',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                BottomIcons.dollar,
                size: 20,
                color: Color(0xFFFFFFFFF),
              ),
              Text(
                pedido.getTotal(),
                style: TextStyle(
                  fontFamily: 'Avenir',
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ]),
          ),
          SizedBox(
            width: 90,
          ),
          InkWell(
            child: Container(
              height: 40,
              width: 125,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F6),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Center(
                child: Row(children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Center(
                        child: Text(
                          'seguir envio',
                          style: TextStyle(
                              color: Color(0xFF353B50),
                              fontSize: 14,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w600),
                        ),
                      ))
                ]),
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'status');
            },
          )
        ],
      )),
    );
  }
}
