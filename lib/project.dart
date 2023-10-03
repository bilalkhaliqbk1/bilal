import 'package:bilal/project_card_wgt.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class my_project extends StatefulWidget {
  const my_project({super.key});

  @override
  State<my_project> createState() => _my_projectState();
}

class _my_projectState extends State<my_project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Projects"),
        backgroundColor: Color(0xff252525),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              project_card_wgt(
                title: "ALM Online Store",
                description: "ALM Online Store: Your one-stop destination for effortless, secure, and personalized online shopping",
                lang: "Android App",
                star: "10",
              ),
              project_card_wgt(
                title: "ALM Online Store",
                description: "ALM Online Store: Your one-stop destination for effortless, secure, and personalized online shopping",
                lang: "Android App",
                star: "10",
              ),
              project_card_wgt(
                title: "ALM Online Store",
                description: "ALM Online Store: Your one-stop destination for effortless, secure, and personalized online shopping",
                lang: "Android App",
                star: "10",
              ),
              project_card_wgt(
                title: "ALM Online Store",
                description: "ALM Online Store: Your one-stop destination for effortless, secure, and personalized online shopping",
                lang: "Android App",
                star: "10",
              ),
              project_card_wgt(
                title: "ALM Online Store",
                description: "ALM Online Store: Your one-stop destination for effortless, secure, and personalized online shopping",
                lang: "Android App",
                star: "10",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


