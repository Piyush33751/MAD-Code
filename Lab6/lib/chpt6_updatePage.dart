import 'package:flutter/material.dart';
import 'package:lab5/chpt5artdataservice.dart';

class updateArt extends StatefulWidget {
  const updateArt({super.key});

  @override
  State<updateArt> createState() => _updateArtState();
}

class _updateArtState extends State<updateArt> {
  final TextEditingController title=TextEditingController();
  final TextEditingController Artist=TextEditingController();
  final TextEditingController ImageName=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title:const Text("Update art data here")),

       body:Center(child:Column(
        children: [
          TextField(
            controller:title ,
            decoration:const InputDecoration(
              labelText:'Update the title',
              border:OutlineInputBorder(),
            )
            ),
            const SizedBox(height: 20),
            TextField(
            controller:Artist ,
            decoration:const InputDecoration(
              labelText:'Update the Artist Name',
              border:OutlineInputBorder(),
            )
            ),
            const SizedBox(height: 20),

            TextField(
            controller:ImageName ,
            decoration:const InputDecoration(
              labelText:'Update the Image Name',
              border:OutlineInputBorder(),
            )
            ),
            const SizedBox(height: 20),

            FilledButton(
              child:const Text("Update Confirmed"),
              onPressed: (){
                ArtDataService.updateArtByArtId(ArtDataService.tappedId,title.text,Artist.text,ImageName.text);
                Navigator.pushNamed(context, "/artsummarypage");         
              },
            )
        ],
       ))
    );
  }
}