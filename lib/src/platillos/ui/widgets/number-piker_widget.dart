import 'package:flutter/material.dart';

import '../../../../bottom_icons_icons.dart';

class NumberPikerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          InkWell(
            child: Container(
              width: 34.0,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFD2D2D6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0)),
              ),
              child: Center(
                child: Icon(
                  BottomIcons.plus,
                  color: Color(0xFF353B50),
                  size: 15.0,
                ),
              ),
            ),
            onTap: () {},
          ),
          Container(
              width: 70.0,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFF),
              ),
              child: Center(
                child: Text(
                  '000',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w600),
                ),
              )),
          InkWell(
            child: Container(
              width: 35.0,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFD2D2D6),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0)),
              ),
              child: Center(
                child: Icon(
                  BottomIcons.minus,
                  color: Color(0xFF353B50),
                  size: 15.0,
                ),
              ),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
