import 'package:calculator/UI/Widgets/HistoryListTile.dart';
import 'package:flutter/material.dart';


class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  Map<String,String> _spoof = {"calculation": "2+4", "result": "6"};

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      child: ListView.builder(itemBuilder: (context,index){
        return HistoryListTile(entry:_spoof);
      }),
    );
  }
}
