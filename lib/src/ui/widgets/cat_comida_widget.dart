import 'package:flutter/material.dart';
import 'package:taxi_pago_app/src/model/categoria_model.dart';

class CatComidaWidget extends StatelessWidget {
  String pathImage = 'assets/img/recomendacion_desayuno.png';
  String categoriaName = 'Tacos';
  String ruta = 'tacos';
  String catCode = '0';
  Categoria categoria = new Categoria();

  CatComidaWidget(this.pathImage, this.categoriaName, this.ruta, this.catCode);

  @override
  Widget build(BuildContext context) {
    return _catCat(context);
  }

  Widget _catCat(BuildContext context) {
    return InkWell(
        child: Container(
          height: 112,
          width: 110,
          margin: EdgeInsets.only(left: 20.0, bottom: 6, top: 6),
          decoration: BoxDecoration(
              color: Colors.white,
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
                width: 100,
                height: 75,
                child: Image(image: AssetImage(this.pathImage)),
              ),
              Text(
                this.categoriaName,
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF353b50)),
              )
            ],
          ),
        ),
        onTap: () {
          categoria.setCategoria(categoriaName);
          categoria.setCatCode(catCode);
          print(categoria.getCategoria());
          Navigator.pushNamed(context, this.ruta, arguments: categoria);

          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
        }
        //onTap: ,
        );
  }
}
