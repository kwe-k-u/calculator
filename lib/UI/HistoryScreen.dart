import 'package:calculator/UI/Widgets/HistoryListTile.dart';
import 'package:calculator/utils/EntryStack.dart';
import 'package:flutter/material.dart';


class HistoryScreen extends StatefulWidget {
  final EntryStack history;

  const HistoryScreen({Key key, this.history}) : super(key: key);
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  EntryStack stack;

  @override
  void initState() {
    super.initState();
    this.stack = widget.history;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      child: ListView.builder(
        itemCount: stack.count,
          itemBuilder: (context,index){
            return HistoryListTile(
                entry:stack.elementAt( stack.count - (index+1) )
            );
      // child: ListView.builder(itemBuilder: (context,index){
        // return HistoryListTile(entry:_spoof);
      }),
    );
  }
}
