import 'package:calculator/UI/HistoryScreen.dart';
import 'package:calculator/UI/Widgets/EntryScreen.dart';
import 'package:calculator/UI/Widgets/KeyPad.dart';
import 'package:calculator/utils/Entry.dart';
import 'package:calculator/utils/EntryStack.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CalculationScreen extends StatefulWidget {
  @override
  _CalculationScreenState createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  EntryStack history = new EntryStack();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: HistoryScreen(history: history),
      ),


      body:
      Container(
        child: ChangeNotifierProvider(
          create: (context) => Entry(),


          child: Consumer<Entry>(
            builder: (context,entry,child){
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EntryScreen(entry: entry),
                  KeyPad(entry, this.history)
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
