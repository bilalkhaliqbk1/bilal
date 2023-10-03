import 'package:flutter/material.dart';

class my_achive extends StatelessWidget {

  String num;

  my_achive({required this.num,required this.type});

  String type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(num,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
        Container(
          margin: EdgeInsets.only(top: 2.5),
          child:
          Text(type,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w100,fontSize: 12.5
          )),
        ),
      ],
    );
  }
}