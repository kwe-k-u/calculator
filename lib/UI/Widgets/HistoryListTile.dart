import 'package:flutter/material.dart';

class HistoryListTile extends StatelessWidget {
  Map<String,String> entry;

  HistoryListTile({this.entry}){
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.greenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

           Text(this.entry['calculation'],),
           Text("= ${entry['result']}"),

          Divider(
            thickness: 1.5,
          )
        ],
      ),
    );
  }
}
