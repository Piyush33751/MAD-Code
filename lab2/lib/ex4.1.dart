import 'package:flutter/material.dart';
import 'package:lab2/page1.dart';
import 'package:lab2/page2.dart';
void main(){
  runApp(const MaterialApp(home:ArtPage()));
}

class ArtPage extends StatefulWidget {
  const ArtPage({super.key});

  @override
  State<ArtPage> createState() => _ArtPageState();
}

class _ArtPageState extends State<ArtPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
    body: ListView(children: [
    Container(
    color: Colors.orange,
    child: Row(children: [
    const Text('Art page 1'),
    IconButton(onPressed: () {
      Navigator.push(context,MaterialPageRoute(
          builder:(context)=>const Page1(),
      ));
    }, icon:const Icon(Icons.arrow_forward_sharp))
    ]),
    ),
    const SizedBox(height: 10),
    Container(
    color: Colors.orange,
    child: Row(children: [
    const Text('Art page 2'),
    IconButton(onPressed: () {
       Navigator.push(context,MaterialPageRoute(
          builder:(context)=>const Page2(),
      ));
     }, icon:const  Icon(Icons.arrow_forward_sharp))
    ]),
    ),
    ]));
  }
}