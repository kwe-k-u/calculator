
import 'package:calculator/UI/Widgets/KeyPadButton.dart';
import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          _SymbolsRow(context),
          _Row1(context),
          _Row2(context),
          _Row3(context),
          _Row4(context),
        ],
      ),
    );
  }
}



Widget _SymbolsRow(BuildContext context){
  double width  =MediaQuery.of(context).size.width * 0.25;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      //pi
      KeyButton(
        context: context,
        color: Colors.primaries.elementAt(3),
        character: "><", //todo replace with pi
      ),


      //left bracket
      KeyButton(
        context: context,
        color: Colors.primaries.elementAt(3),
        character: "(",
      ),


      //right bracket
      KeyButton(
        context: context,
        color: Colors.primaries.elementAt(3),
        character: ")",
      ),




      //divide
      KeyButton(
        color: Colors.primaries.elementAt(3),
        context: context,
        character: "/",
      ),
    ],
  );
}



Widget _Row1(BuildContext context){
  double width  =MediaQuery.of(context).size.width * 0.25;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      //7
      KeyButton(
        context: context,
        character: "7",
      ),


      //8
      KeyButton(
        context: context,
        character: "8",
      ),


      //9
      KeyButton(
        context: context,
        character: "9",
      ),




      KeyButton(
        context: context,
        character: "x",
        color: Colors.primaries.elementAt(3),
      ),
    ],
  );
}





Widget _Row2(BuildContext context){
  double width  =MediaQuery.of(context).size.width * 0.25;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      KeyButton(
        context: context,
        character: "4",
      ),


      KeyButton(
        context: context,
        character: "5",
      ),


      KeyButton(
        context: context,
        character: "6",
      ),




      KeyButton(
        context: context,
        character: "-",
        color: Colors.primaries.elementAt(3),
      ),
    ],
  );
}






Widget _Row3(BuildContext context){
  double width  =MediaQuery.of(context).size.width * 0.25;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      KeyButton(
        context: context,
        character: "1",
      ),


      KeyButton(
        context: context,
        character: "2",
      ),


      KeyButton(
        context: context,
        character: "3",
      ),




      KeyButton(
        context: context,
        character: "+",
        color: Colors.primaries.elementAt(3),
      ),
    ],
  );
}






Widget _Row4(BuildContext context){
  double width  =MediaQuery.of(context).size.width * 0.25;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      KeyButton(
        context: context,
        character: "0",
      ),


      KeyButton(
        context: context,
        character: ".",
      ),


      //Delete
      KeyButton(
        context: context,
        character: "del", //todo make a backspace ico
      ),




      //Equal to
      KeyButton(
        context: context,
        color: Colors.pinkAccent,
        character: "=",
      ),
    ],
  );
}

