import 'dart:async';

import 'package:bilal/mainscr.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class splesh extends StatefulWidget {
  const splesh({super.key});

  @override
  State<splesh> createState() => _spleshState();
}

class _spleshState extends State<splesh> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                dbscr()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Lottie.asset('splesh_ani.json'),
      ),
    );
  }
}
