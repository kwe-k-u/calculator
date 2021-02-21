
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
        keyType: KeyType.constant,
        character: "><", //todo replace with pi
      ),


      //left bracket
      KeyButton(
        context: context,
        color: Colors.primaries.elementAt(3),
        character: "(",
        keyType: KeyType.symbol,
      ),


      //right bracket
      KeyButton(
        context: context,
        color: Colors.primaries.elementAt(3),
        character: ")",
        keyType: KeyType.symbol,
      ),




      //divide
      KeyButton(
        color: Colors.primaries.elementAt(3),
        context: context,
        character: "/",
        keyType: KeyType.operation,
      ),
    ],
  );
}



Widget _Row1(BuildContext context){

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      //7
      KeyButton(
        context: context,
        character: "7",
        keyType: KeyType.number,
      ),


      //8
      KeyButton(
        context: context,
        character: "8",
        keyType: KeyType.number,
      ),


      //9
      KeyButton(
        context: context,
        character: "9",
        keyType: KeyType.number,
      ),




      KeyButton(
        context: context,
        character: "x",
        keyType: KeyType.operation,
        color: Colors.primaries.elementAt(3),
      ),
    ],
  );
}





Widget _Row2(BuildContext context){

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      KeyButton(
        context: context,
        character: "4",
          keyType: KeyType.number
      ),


      KeyButton(
        context: context,
        character: "5",
          keyType: KeyType.number
      ),


      KeyButton(
        context: context,
        character: "6",
          keyType: KeyType.number
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
          keyType: KeyType.number
      ),


      KeyButton(
        context: context,
        character: "2",
          keyType: KeyType.number
      ),


      KeyButton(
        context: context,
        character: "3",
          keyType: KeyType.number
      ),




      KeyButton(
        context: context,
        character: "+",
        color: Colors.primaries.elementAt(3),
        keyType: KeyType.operation
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
          keyType: KeyType.number
      ),


      KeyButton(
        context: context,
        character: ".",
          keyType: KeyType.symbol
      ),


      //Delete
      KeyButton(
        context: context,
        character: "del", //todo make a backspace icon
          keyType: KeyType.action
      ),




      //Equal to
      KeyButton(
        context: context,
        color: Colors.pinkAccent,
        character: "=",
          keyType: KeyType.action
      ),
    ],
  );
}

