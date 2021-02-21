import 'package:flutter/material.dart';

Widget EntryScreen(BuildContext context){
  return Container(
    padding: EdgeInsets.all(8.0),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height*0.2,
    color: Colors.white12,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("25*4", style: _topTextStyle,),
        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        Text("100", style: _bottomTextStyle,),
      ],
    ),
  );
}



TextStyle _topTextStyle = TextStyle(

    fontSize: 30.0
);





TextStyle _bottomTextStyle = TextStyle(
  fontSize: 50.0
);