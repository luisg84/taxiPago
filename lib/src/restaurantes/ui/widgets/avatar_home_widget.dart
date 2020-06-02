import 'package:flutter/material.dart';

class AvatarHomeWidget extends StatelessWidget {
  String pathImage = 'assets/img/perfilpicture.jpg';
  String name = 'Nombre de usuario';
  String direction = 'Dirección';

  AvatarHomeWidget(this.pathImage, this.name, this.direction);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _avatarPicture(),
        _userData()
        // userDetails
      ],
    );
  }

  Widget _avatarPicture() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(this.pathImage),
        ),
      ),
    );
  }

  Widget _userData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0, top: 20.0),
          child: Text(
            this.name,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w800,
                color: Color(0xFF62b448)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(
            this.direction,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w100,
                color: Color(0xFF353b50)),
          ),
        )
      ],
    );
  }
}
