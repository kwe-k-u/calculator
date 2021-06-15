import 'package:calculator/utils/Character.dart';
import 'package:calculator/utils/Entry.dart';
import 'package:calculator/utils/KeyType.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';






class KeyButton extends StatelessWidget {
  final BuildContext context;
  final Character character;
  Color color = Colors.black;
  Color keyColor = Colors.white;
  final Function onPressed;
  final Entry entry;


  KeyButton({
    @required this.entry,
    @required this.context,
    @required this.character,
    this.color,
    this.keyColor,
    this.onPressed ,

  });





  @override
  Widget build(BuildContext context) {


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
            this.character.value,
            style: _textStyle
        ),
        onPressed: () {
          entry.addCharacter(this.character);
        },
      ),
    );
  }
}






class IconKeyButton extends StatelessWidget {
  BuildContext context;
  IconData icon;
  Color color = Colors.black;
  Color keyColor = Colors.white;
  KeyType keyType;
  Function onPressed;
  Function onLongPressed;


  IconKeyButton({
    @required this.context,
    @required this.icon,
    this.color,
    this.keyColor,
    @required this.keyType,
    this.onPressed,
    this.onLongPressed,
  });



  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width * 0.20,
      margin: EdgeInsets.all(8.0),
      child: RaisedButton(
        padding: EdgeInsets.all(8.0),

        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(108.0),
        ),
        child: Icon(icon,color: keyColor,),
        onPressed: onPressed,
        onLongPress: onLongPressed,
      ),
    );
  }
}

