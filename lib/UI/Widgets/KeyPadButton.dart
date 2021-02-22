import 'package:flutter/material.dart';





enum KeyType{
  number, /// digits used in calculation
  operation, /// mathematical operatons
  action, /// actions such as delete and equal to
  symbol, ///symbols such as brackets
  constant,/// constants such as pi
}



Widget KeyButton({
  @required BuildContext context,
  @required String value,
  Color color = Colors.black,
  Color keyColor = Colors.white,
  Function onpressed ,
  @required KeyType keyType

}) {

  TextStyle _textStyle = TextStyle(
      color: keyColor,
      fontWeight: FontWeight.w900,
      fontSize: 28.0
  );





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
          value,
          style: _textStyle
      ),
      onPressed: () {

      },
    ),
  );


}



Widget iconKeyButton({
  @required BuildContext context,
  @required IconData icon,
  Color color = Colors.black,
  Color keyColor = Colors.white,
  @required KeyType keyType

}) {


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
      child: Icon(icon,color: keyColor,),
      onPressed: () {

      },
    ),
  );


}

