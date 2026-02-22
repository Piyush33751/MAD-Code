import 'package:flutter/material.dart';
import 'package:lab5/chpt4/chpt4eg_pg2.dart';
import 'package:lab5/chpt4/chtp4eg_pg1.dart';
 
void main(){
  runApp(const MaterialApp(home:MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView(children: [
Container(
color: Colors.orange,
child: Row(children: [
const Text('Art page 1'),
IconButton(onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
       builder: (context) => const Page1(),
    ),
  );
}, icon: Icon(Icons.arrow_forward_sharp))
]),
),
const SizedBox(height: 10),
Container(
color: Colors.orange,
child: Row(children: [
const Text('Art page 2'),
IconButton(onPressed: () {
   Navigator.push(
    context,
    MaterialPageRoute(
       builder: (context) => const Page2(),
    ),
  );
}, icon: Icon(Icons.arrow_forward_sharp))
]),
),
]));
  }
}