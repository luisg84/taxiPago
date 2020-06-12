import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/pedidos/providers/pedidos_providers.dart';
import 'package:taxi_pago_app/src/pedidos/ui/screens/sliver-list_pedidos.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/avatar_home_widget.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/topbar_widget.dart';

class PedidosHomePage extends StatelessWidget {
  final pedidosProvider = new PedidosProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _contenido(),
    );
  }

  Widget _contenido() {
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
                'Pedidos',
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
                        ]),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                ]),
          ),
        ),
        _Lista()
      ],
    );
  }

  Widget _Lista() {
    return FutureBuilder(
      future: pedidosProvider.getPedidos(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return SliverListPedidos(
            pedidos: snapshot.data,
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
  }
}
