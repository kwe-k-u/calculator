import 'package:calculator/utils/Entry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class EntryScreen extends StatefulWidget {
  Entry entry;

  EntryScreen({this.entry});

  @override
  _EntryScreenState createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Entry>(
      builder: (context,entry,child){
        return Container(
          padding: EdgeInsets.all(8.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.2,
          color: Colors.white12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.entry.calculationString, style: _topTextStyle,),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Text(widget.entry.result.toStringAsFixed(2), style: _bottomTextStyle,),
            ],
          ),
        );
      },
    );
  }
}




TextStyle _topTextStyle = TextStyle(

    fontSize: 30.0
);





TextStyle _bottomTextStyle = TextStyle(
  fontSize: 50.0
);