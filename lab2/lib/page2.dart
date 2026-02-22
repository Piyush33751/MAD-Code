import 'package:flutter/material.dart';
import 'dart:math' as math;

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Center(
        child:Transform.rotate(
        angle:math.pi,
        child:const Icon(
        Icons.add_reaction_outlined,
        color: Colors.green,
        size: 200,
        ),
        )
        ),
        backgroundColor:Colors.blue,
    );
  }
}