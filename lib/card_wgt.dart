import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class card_wgt extends StatelessWidget {

  IconData software_icon;
  String software_name;


  card_wgt({required this.software_icon,required this.software_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [

          Icon(software_icon,color: Colors.white),
            SizedBox(height: 10,),
            Text(software_name,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),)
          ],
        ),
      ),
    );
  }
}
