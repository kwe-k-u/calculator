
import 'package:calculator/UI/Widgets/KeyPadButton.dart';
import 'package:calculator/utils/Character.dart';
import 'package:calculator/utils/Entry.dart';
import 'package:calculator/utils/EntryStack.dart';
import 'package:calculator/utils/KeyType.dart';
import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  final Entry entry;
  final EntryStack stack;

  KeyPad(this.entry, this.stack);


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          _SymbolsRow(context, entry),
          _Row1(context, entry),
          _Row2(context, entry),
          _Row3(context, entry),
          _Row4(context, entry, this.stack),
        ],
      ),
    );
  }
}



Widget _SymbolsRow(BuildContext context,Entry entry){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      //pi
      KeyButton(
        entry: entry,
        context: context,
        color: Colors.primaries.elementAt(3),
        character: new Character(keyType: KeyType.constant, value: "π"),
      ),


      //left bracket
      KeyButton(
        context: context,
        color: Colors.primaries.elementAt(3),
        entry: entry,
        character: new Character(value: "(", keyType: KeyType.symbol),
      ),


      //right bracket
      KeyButton(
        context: context,
        color: Colors.primaries.elementAt(3),
        entry: entry,
        character: new Character(value: ")", keyType: KeyType.symbol),
      ),




      //divide
      KeyButton(
        color: Colors.primaries.elementAt(3),
        context: context,
        entry: entry,
        character: new Character(value: "/", keyType: KeyType.operation,)
      ),
    ],
  );
}



Widget _Row1(BuildContext context,Entry entry){

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      //7
      KeyButton(
        context: context,
        entry: entry,
        character: new Character(value: "7", keyType: KeyType.number),
      ),


      //8
      KeyButton(
        context: context,
        entry: entry,
        character: new Character(value: "8", keyType: KeyType.number)
      ),


      //9
      KeyButton(
        context: context,
        entry: entry,
        character: new Character(value: "9", keyType: KeyType.number),
      ),




      KeyButton(
        context: context,
        entry: entry,
        character: new Character(value: "x", keyType: KeyType.operation),
        color: Colors.primaries.elementAt(3),
      ),
    ],
  );
}





Widget _Row2(BuildContext context, Entry entry){

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      KeyButton(
        entry: entry,
        context: context,
        character: new Character(value: "4", keyType: KeyType.number)
      ),


      KeyButton(
        context: context,
        entry: entry,
        character: new Character(value: "5", keyType: KeyType.number)
      ),


      KeyButton(
        context: context,
        entry: entry,
        character: new Character(value: "6", keyType: KeyType.number)
      ),




      KeyButton(
        context: context,
        entry: entry,
        character: new Character(value: "-", keyType: KeyType.operation),
        color: Colors.primaries.elementAt(3),
      ),
    ],
  );
}






Widget _Row3(BuildContext context, Entry entry){

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      KeyButton(
        context: context,
        entry: entry,
        character: new Character(value: "1", keyType: KeyType.number)
      ),


      KeyButton(
        context: context,
        entry: entry,
        character: new Character(value: "2", keyType: KeyType.number)
      ),


      KeyButton(
        entry: entry,
        context: context,
        character: new Character(value: "3", keyType: KeyType.number)
      ),




      KeyButton(
        entry: entry,
        context: context,
        character: new Character(value: "+", keyType: KeyType.operation),
        color: Colors.primaries.elementAt(3),
      ),
    ],
  );
}






Widget _Row4(BuildContext context, Entry entry, EntryStack stack){

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      KeyButton(
        entry: entry,
        context: context,
        character: new Character(value: "0", keyType: KeyType.number),
      ),


      KeyButton(
        context: context,
          entry: entry,
          character: new Character(value: ".", keyType: KeyType.symbol)
      ),


      //Delete
      IconKeyButton(
        context: context,
        icon: Icons.backspace_outlined, //todo make a backspace icon
          keyType: KeyType.action,
        onPressed: (){
          entry.removeCharacter();
        },

        onLongPressed: (){
          entry.clearAll();
        }
      ),




      //Equal to
      KeyButton(
          context: context,
          color: Colors.pinkAccent,
          entry: entry,
          character: new Character(value: "=", keyType: KeyType.action),
        onPressed: (){
            stack.addEntry(entry);
        },
      ),
    ],
  );
}

