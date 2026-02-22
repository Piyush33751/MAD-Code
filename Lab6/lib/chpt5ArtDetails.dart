import 'package:flutter/material.dart';
import 'package:lab5/chpt5artdataservice.dart';
class ArtDisplayDetails extends StatefulWidget {
  const ArtDisplayDetails({super.key});

  @override
  State<ArtDisplayDetails> createState() => _ArtDisplayDetailsState();
}

class _ArtDisplayDetailsState extends State<ArtDisplayDetails> {
  get decoration => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Art Details'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back), 
            onPressed: () { 
              Navigator.pushNamed(context,'/artsummarypage');
             },),
      ]),

      body:Center(child:Column(
        children: [
          
          Container(
           height:200,
            width:200,
           child: Image.asset("lib/assests/img/${ArtDataService.tappedImage}"),
          ),
          const SizedBox(height:20),
           
           Container(
           height:100,
            width:200,
           child:Text(" ${ArtDataService.tappedArtist} made ${ArtDataService.tappedTitle}"),
          ),
         
          const SizedBox(height:20),
        
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            FilledButton(
            onPressed: () {
            showDialog(
            context: context,
            builder: (context) {
            return AlertDialog(
            backgroundColor: Colors.white60,
            title: const Text(
            'Confirm',
            style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            content: const Text(
            'Proceed to delete data?',
            style: const TextStyle(
            color: Colors.black, fontSize: 16),
            ),
            actions: [
            MaterialButton(
            child: const Text('OK'), onPressed: () {
            print ("OK clicked.");
            print ("Delete data...");
             ArtDataService.removeArtByArtId(ArtDataService.tappedId);
             Navigator.pushNamed(context, "/artsummarypage");
            }),
            MaterialButton(
            child: const Text('Cancel'), onPressed: () {
            print ("Cancel clicked.");
            
            }),
            ]);
            });
            }, 
            child:const Text("Delete"),
            ),

            const SizedBox(width:20),

            FilledButton(
              child:const Text("Update Art?"),
              onPressed:(){
                Navigator.pushNamed(context,"/updateartpiece");
              }
            )
           ], 
         )
        ],
      ))
    );
  }
}

  