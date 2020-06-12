import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/pedidos/model/pedidos_model.dart';
import 'package:taxi_pago_app/src/pedidos/ui/widgets/pedido-card_widget.dart';
import 'package:taxi_pago_app/src/platillos/ui/widgets/platillo-card_widget.dart';

class SliverListPedidos extends StatelessWidget {
  final List<Pedido> pedidos;

  SliverListPedidos({@required this.pedidos});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(_listaPedidos(context)));
  }

  List<Widget> _listaPedidos(BuildContext context) {
    final List<Widget> pedidosList = [];
    int i = 0;
    // print('ejecuta esliver list platillos');
    pedidos.forEach((opt) {
      final widgetTemp = PedidoCardWidget(pedido: pedidos[i]);

      pedidosList.add(widgetTemp);
      i++;
    });
    return pedidosList;
  }
}
