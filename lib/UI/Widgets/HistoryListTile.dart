import 'package:calculator/utils/Entry.dart';
import 'package:flutter/material.dart';

class HistoryListTile extends StatelessWidget {
  final Entry entry;

  HistoryListTile({this.entry});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.greenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

           Text(this.entry.calculationString,),
           Text("= ${entry.result}"),

          Divider(
            thickness: 1.5,
          )
        ],
      ),
    );
  }
}
