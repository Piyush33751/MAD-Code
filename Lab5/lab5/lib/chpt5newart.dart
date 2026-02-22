import 'package:flutter/material.dart';
import 'chpt5artdataservice.dart';
class NewArt extends StatefulWidget {
const NewArt({super.key});
@override
State<NewArt> createState() => _NewArtState();
}
class _NewArtState extends State<NewArt> {
TextEditingController controllerId = TextEditingController();
TextEditingController controllerTitle = TextEditingController();
TextEditingController controllerArtist = TextEditingController();
TextEditingController controllerImage = TextEditingController();
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color.fromARGB(255, 221, 189, 247),
appBar: AppBar(
title: const Text('Add a new Art Piece'),
backgroundColor: Color.fromARGB(255, 112, 78, 142),
foregroundColor: Colors.white,
centerTitle: true,
),
body: Container(
padding: const EdgeInsets.all(30),
child: Column(children: [
SizedBox(height: 20),
TextField(
controller: controllerId,
decoration: const InputDecoration(
fillColor: Colors.white, filled: true,
labelText: "ArtID", border: OutlineInputBorder()),
),
const SizedBox(height: 5),
TextField(
controller: controllerTitle,
decoration: const InputDecoration(
fillColor: Colors.white, filled: true,
labelText: "Title", border: OutlineInputBorder()),
),
const SizedBox(height: 10),
TextField(
controller: controllerArtist,
decoration: const InputDecoration(
fillColor: Colors.white, filled: true,
labelText: "Artist", border: OutlineInputBorder()),
),
const SizedBox(height: 10),
TextField(
controller: controllerImage,
decoration: const InputDecoration(
fillColor: Colors.white, filled: true,
labelText: "Image Filename", border: OutlineInputBorder()),
),
const SizedBox(height: 10),
FilledButton( child: const Text('Add'),
onPressed: () {
ArtDataService.addArt (controllerId.text,
controllerTitle.text, controllerArtist.text,
controllerImage.text);
Navigator.pushNamed(context, "/artsummarypage");
}, ), ]), ), ); } }