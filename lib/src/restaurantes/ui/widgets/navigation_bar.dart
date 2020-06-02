import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/restaurantes/ui/screens/home_page.dart';

import '../../../../bottom_icons_icons.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [HomePage()];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme2(context),
    );
  }

  Widget Theme2(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color(0xFFf5f6f7), primaryColor: Colors.purple),
        child: BottomNavigationBar(
            fixedColor: Color(0xFF62b448),
            unselectedItemColor: Color(0xFFb5b5b5),
            onTap: onTapTapped,
            currentIndex: indexTap,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 9.0,
            unselectedFontSize: 9.0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(BottomIcons.home_lg_alt_solid),
                  title: Text("Principal")),
              BottomNavigationBarItem(
                  icon: Icon(BottomIcons.taxi_solid), title: Text("pedidos")),
              BottomNavigationBarItem(
                  icon: Icon(BottomIcons.shopping_basket_solid),
                  title: Text("caja")),
              BottomNavigationBarItem(
                  icon: Icon(BottomIcons.user_solid), title: Text("perfil"))
            ]));
  }
}
