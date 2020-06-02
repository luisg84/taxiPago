import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/restaurantes/model/categoria_model.dart';
import 'package:taxi_pago_app/src/restaurantes/providers/res-list_provider.dart';
import 'package:taxi_pago_app/src/restaurantes/providers/restaurantes_provider.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/recomendaciones_card_widget.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/sliver-list_restaurantes.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/widgets/topbar_widget.dart';

class restPage extends StatelessWidget {
  final restaurantesProvider = new RestaurantesProvider();

  restPage();

  @override
  Widget build(BuildContext context) {
    final Categoria cat = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: _Barra(cat),
    );
  }

  Widget _Barra(Categoria categoria) {
    /*   resListProvider.cargarData().then((restaurantes) {
      print('_Lista');
      print(restaurantes);
    }); */
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
                categoria.getCategoria(),
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
                    child: topBarWidget(),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                ]),
          ),
        ),
        _Lista(categoria.getCatCode())
      ],
    );
  }

  Widget _Lista(String catCode) {
    return FutureBuilder(
      future: restaurantesProvider.getRestaurantes(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return SliverListRestaurantes(
            restaurantes: snapshot.data,
            catCode: catCode,
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

    // restaurantesProvider.getRestaurantes();

    // return FutureBuilder(
    //   future: resListProvider.cargarData(),
    //   //initialData: ,
    //   builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
    //     /*  ListView(children: _Restaurantes(snapshot.data)); */
    //     return SliverListRestaurantes(
    //       restaurantes: [1, 2, 3, 4],
    //     );
    //     /* return Center(
    //         child: Column(
    //       children: <Widget>[
    //         _Restaurantes(snapshot.data),
    //                   ],
    //                 )); */
    //   },
    // );
  }

  List<Widget> _Restaurantes(List<dynamic> data) {
    final List<Widget> restaurantesList = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['nombre'],
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w600,
                color: Color(0xFF353b50))),
      );

      restaurantesList.add(widgetTemp);
    });

    return restaurantesList;
  }
}
