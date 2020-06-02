import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/platillos/model/platillos_model.dart';

class PlatilloCardWidget extends StatelessWidget {
  Platillo platillo = new Platillo();

  PlatilloCardWidget({@required this.platillo});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          width: 372.0,
          height: 139,
          margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            color: Color(0xFFFDEDEDE),
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
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color.fromARGB(82, 0, 0, 0),
                        blurRadius: 30.0,
                        offset: Offset(0.0, 0.0))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(platillo.getFoto()),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 25.0, left: 20.0, right: 20.0, bottom: 4.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        platillo.getNombre(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF353b50)),
                      ),
                      Text(platillo.getTags()),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        platillo.getPrecio(),
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
      onTap: () {},
    );
  }
}
