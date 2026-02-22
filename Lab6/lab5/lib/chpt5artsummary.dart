import 'package:flutter/material.dart';
import 'chpt5artdataservice.dart';


class ArtSummary extends StatefulWidget {
const ArtSummary({super.key});
@override
State<ArtSummary> createState() => _ArtSummaryState();
}
class _ArtSummaryState extends State<ArtSummary> {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color.fromARGB(255, 221, 189, 247),
appBar: AppBar(
title: const Text("Art List"),
backgroundColor: const Color.fromARGB(255, 112, 78, 142),
foregroundColor: Colors.white,
centerTitle: true,
),
body: Column(children: [
SizedBox(
height: 200,
child: ListView.builder(
itemCount: ArtDataService.getCount(),
itemBuilder: (context, index) {
return GestureDetector(
    onTap:(){
     ArtDataService.tappedTitle= ArtDataService.getArtAt(index).title;
     ArtDataService.tappedArtist= ArtDataService.getArtAt(index).artist;
     ArtDataService.tappedImage= ArtDataService.getArtAt(index).image;
     ArtDataService.tappedId=ArtDataService.getArtAt(index).artId??"";
     Navigator.pushNamed(context, "/artdetailspage");
    },
    child:Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
    padding: const EdgeInsets.all(10),
    color: Colors.white,
    child: Row(children: [
      Container(
        height:20,
        child:Text(ArtDataService.getArtAt(index).title??"")
      ),
      const SizedBox(width:20),
      Container(
        height:20,
        child:Text(ArtDataService.getArtAt(index).artist??"")
      ),
    ],)
    ),
    ));
},
),
),
const SizedBox(height: 10),
FilledButton(
child: const Text("Add new art piece"),
onPressed: () {
Navigator.pushNamed(context, "/newartpage");
})
]), ); } }
//Text("${ArtDataService.getArtAt(index).title} made by ${ArtDataService.getArtAt(index).artist}"),