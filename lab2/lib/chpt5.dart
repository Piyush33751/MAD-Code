import 'package:flutter/material.dart';
import 'package:lab2/artdart.dart';
class ArtSummary extends StatefulWidget {
const ArtSummary({super.key});
@override
State<ArtSummary> createState() => _ArtSummaryState();
}
class _ArtSummaryState extends State<ArtSummary> {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color.fromARGB(255, 221, 189, 247),
appBar: AppBar(
title: const Text("Art List"),
backgroundColor: Color.fromARGB(255, 112, 78, 142),
foregroundColor: Colors.white,
centerTitle: true,
),
body: Column(children: [
SizedBox(
height: 200,
child: ListView.builder(
itemCount: ArtDataService.getCount(),
itemBuilder: (context, index) {
return Padding(
padding: EdgeInsets.all(10),
child: Container(
padding: EdgeInsets.all(10),
color: Colors.white,
child: Text(ArtDataService.getArtAt(index).title),
),
);
},
),
),
SizedBox(height: 10),
FilledButton(
child: Text("Add new art piece"),
onPressed: () {
Navigator.pushNamed(context, "/newartpage");
})
]), ); } }