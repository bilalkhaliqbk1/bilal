import 'package:bilal/about.dart';
import 'package:bilal/card_wgt.dart';
import 'package:bilal/myachive_wgt.dart';
import 'package:bilal/project.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class dbscr extends StatefulWidget {
  const dbscr({super.key});

  @override
  State<dbscr> createState() => _dbscrState();
}

class _dbscrState extends State<dbscr> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu_outlined,color: Colors.white),
          itemBuilder: (context)=>[
            PopupMenuItem(child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => my_project(),));}, child: Text("Projects",style: TextStyle(color: Colors.white))),
              value:1 ,
            ),
            PopupMenuItem(child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => about_me(),));}, child: Text("About me",style: TextStyle(color: Colors.white),)),
              value:1 ,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:
      SlidingSheet(
        margin: EdgeInsets.symmetric(horizontal: 10),
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(

                margin: EdgeInsets.only(top: 50),
                child: ShaderMask(
                    shaderCallback: (rect){
                      return LinearGradient(
                          begin:  Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black,Colors.transparent]).createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("images/mypic.png"),height: 300,filterQuality: FilterQuality.high,fit: BoxFit.contain,),
                      ],
                    )),
              ),
              Container(
                alignment:  Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.48),
                child: Column(
                  children: <Widget>[
                    Text("Muhammad Bilal",style: TextStyle(fontFamily: "Soho",color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,),),
                    Text("Mobile App Developer",style: TextStyle(fontFamily: "Soho",color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),),
                  ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(top: 30,right:20 ,left:20 ,),
            height: 500,
            child: Column(
              children: <Widget> [
                // my achive
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    my_achive(num: "78",type: "Project",),
                    my_achive(num: "70",type: "Client",),
                    my_achive(num: "99",type: "Massages",),

                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //specialized in
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Specialized In', style: TextStyle(color: Colors.black,letterSpacing: 0.2,fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                ),
                SizedBox(height: 10,),
                //card
                Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        card_wgt(software_icon: Icons.android, software_name: "andoird"),
                        card_wgt(software_icon: Icons.android, software_name: "andoird"),
                        card_wgt(software_icon: Icons.android, software_name: "andoird"),
                      ],
                    ),
                     SizedBox(
                       height: 10,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         card_wgt(software_icon: Icons.android, software_name: "andoird"),
                         card_wgt(software_icon: Icons.android, software_name: "andoird"),
                         card_wgt(software_icon: Icons.android, software_name: "andoird"),
                       ],
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         card_wgt(software_icon: Icons.android, software_name: "andoird"),
                         card_wgt(software_icon: Icons.android, software_name: "andoird"),
                         card_wgt(software_icon: Icons.android, software_name: "andoird"),
                       ],
                     ),
                   ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}



