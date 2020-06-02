import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/platillos/model/platillos_model.dart';
import 'package:taxi_pago_app/src/platillos/ui/widgets/platillo-card_widget.dart';

class SliverListPlatillos extends StatelessWidget {
  final List<Platillo> platillos;

  SliverListPlatillos({@required this.platillos});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(_listaPlatillos(context)));
  }

  List<Widget> _listaPlatillos(BuildContext context) {
    final List<Widget> platillosList = [];
    int i = 0;

    platillos.forEach((opt) {
      final widgetTemp = PlatilloCardWidget(platillo: platillos[i]);
      print(platillos[i].getNombre());
      platillosList.add(widgetTemp);
      i++;
    });
    return platillosList;
  }
}
