import 'package:flutter/material.dart';

import 'avatar_home_widget.dart';

class topBarWidget extends StatelessWidget {
  String path = '/';

  topBarWidget(this.path);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
          /*  color: Colors.blue, */
          ),
      child: Row(children: <Widget>[
        AvatarHomeWidget('assets/img/perfilpicture.jpg', 'Alejandra Ramirez',
            'Cordoba Ver.'),
        SizedBox(
          width: 70.0,
        ),
        InkWell(
            child: Text(
              'Regresar',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF353b50)),
            ),
            onTap: () {
              Navigator.pushNamed(context, path);

              // final route = MaterialPageRoute(builder: (context) => AlertPage());
              // Navigator.push(context, route);
            })
      ]),
    );
  }
}
