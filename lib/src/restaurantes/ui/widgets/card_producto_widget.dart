import 'package:flutter/material.dart';

class cardProductoWidget extends StatelessWidget {
  String pathImage = 'assets/img/cat_tienda.png';
  String categoria = 'Tiendas';

  cardProductoWidget(this.pathImage, this.categoria);
  @override
  Widget build(BuildContext context) {
    return _catProd(context);
  }

  Widget _catProd(BuildContext context) {
    return InkWell(
      child: Container(
        height: 90,
        width: 90,
        margin: EdgeInsets.only(left: 20.0, bottom: 20),
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            color: Color(0xFF62b448),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color.fromARGB(30, 0, 0, 0),
                  blurRadius: 30.0,
                  offset: Offset(0.0, 0.0))
            ]),
        child: Column(
          children: <Widget>[
            Container(
              width: 36,
              height: 29,
              child: Image(image: AssetImage(this.pathImage)),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              this.categoria,
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
