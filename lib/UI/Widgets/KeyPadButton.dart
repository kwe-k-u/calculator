import 'package:flutter/material.dart';

Widget KeyButton({
  @required BuildContext context,
  @required String character,
  Color color = Colors.black,
  Color keyColor = Colors.white,
  @required KeyType keyType

}) {

  TextStyle _textStyle = TextStyle(
      color: keyColor,
      fontWeight: FontWeight.w900,
      fontSize: 28.0
  );





  return Container(
    width: MediaQuery
        .of(context)
        .size
        .width * 0.20,
    margin: EdgeInsets.all(8.0),
    child: RaisedButton(
      padding: EdgeInsets.all(8.0),

      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(108.0),
      ),
      child: Text(
          character,
          style: _textStyle
      ),
      onPressed: () {

      },
    ),
  );


}


enum KeyType{
  number, /// digits used in calculation
  operation, /// mathematical operatons
  action, /// actions such as delete and equal to
  symbol, ///symbols such as brackets
  constant,/// constants such as pi
}