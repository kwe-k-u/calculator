import 'package:flutter/material.dart';

Widget KeyButton({
  @required BuildContext context,
  @required String character,
  Color color = Colors.black
}){



  return Container(
    width: MediaQuery.of(context).size.width * 0.20,
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
      onPressed: (){

      },
    ),
  );
}



TextStyle _textStyle = TextStyle(
  color: Colors.blueGrey,
  fontWeight: FontWeight.w900,
  fontSize: 28.0
);