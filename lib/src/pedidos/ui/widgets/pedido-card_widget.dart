import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/pedidos/model/pedidos_model.dart';

import '../../../../bottom_icons_icons.dart';

class PedidoCardWidget extends StatelessWidget {
  Pedido pedido = new Pedido();

  PedidoCardWidget({@required this.pedido});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          width: 372.0,
          height: 139,
          margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            color: Color(_SelectColor(Pedido().getEstatus())),
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
                  color: Color(0xFFFFFFFF),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color.fromARGB(82, 0, 0, 0),
                        blurRadius: 30.0,
                        offset: Offset(0.0, 0.0))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                ),
                child: Center(
                  child: Icon(BottomIcons.shopping_basket_solid,
                      color: Color(0xFF62B448)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 25.0, left: 20.0, right: 20.0, bottom: 4.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        pedido.getNumero(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF353b50)),
                      ),
                      Text(pedido.getEstatus()),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        pedido.getTotal(),
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
        // Contenido contenido = new Contenido();
        // contenido = pedido.getContenido();
        // print(contenido.getNombre());
        print(pedido.getEstatus());
        Navigator.pushNamed(context, 'contenidopedido', arguments: pedido);
      },
    );
  }

  int _SelectColor(String status) {
    if (status == 'Entregado') {
      print('Naranja');
      return 0xFFFAAD2E;
    } else {
      print('Normal');
      return 0xFFF4F2F2;
    }
  }
}
