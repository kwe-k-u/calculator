import 'package:calculator/UI/HistoryScreen.dart';
import 'package:calculator/UI/Widgets/EntryScreen.dart';
import 'package:calculator/UI/Widgets/KeyPad.dart';
import 'package:flutter/material.dart';


class CalculationScreen extends StatefulWidget {
  @override
  _CalculationScreenState createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [

          IconButton(
            icon: Icon(Icons.history),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> HistoryScreen())
              );
            },
          )
        ],
      ),
      drawer: Drawer(
        child: HistoryScreen(),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.4,
            //   child: Text("5+6"),
            // ),
            EntryScreen(context),

            KeyPad()
          ],
        ),
      ),
    );
  }
}
