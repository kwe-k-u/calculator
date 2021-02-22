import 'package:calculator/UI/HistoryScreen.dart';
import 'package:calculator/UI/Widgets/EntryScreen.dart';
import 'package:calculator/UI/Widgets/KeyPad.dart';
import 'package:flutter/material.dart';


class CalculationScreen extends StatefulWidget {
  @override
  _CalculationScreenState createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  String _string = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: HistoryScreen(),
      ),


      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            EntryScreen(context, _string),
            KeyPad()
          ],
        ),
      ),
    );
  }
}
