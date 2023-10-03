import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class about_me extends StatefulWidget {
  const about_me({super.key});

  @override
  State<about_me> createState() => _about_meState();
}

class _about_meState extends State<about_me> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(

              margin: EdgeInsets.only(top: 80),
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
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.55),
              child: Column(
                children: <Widget>[
                  Text("Hello I am",style: TextStyle(fontFamily: "Soho",color: Colors.white,fontSize: 30,),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Muhammad Bilal",style: TextStyle(fontFamily: "Soho",color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,),),
                  Text("Mobile App Developer",style: TextStyle(fontFamily: "Soho",color: Colors.white,fontSize: 20,),),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 120,
                    padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("Hire Me",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children: <Widget>[
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.instagram),color: Colors.white,),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.linkedin),color: Colors.white,),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.github),color: Colors.white,),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook),color: Colors.white,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
