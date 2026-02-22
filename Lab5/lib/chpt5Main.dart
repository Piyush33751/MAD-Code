import 'package:flutter/material.dart';
import 'package:lab5/chpt5ArtDetails.dart';
import 'package:lab5/chpt5artdataservice.dart';
import 'package:lab5/chpt5artsummary.dart';
import 'package:lab5/chpt5newart.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
);
await ArtDataService.getAllArts();
runApp(MaterialApp(home: const ArtSummary(), routes: {
"/newartpage": (context) => const NewArt(),
"/artsummarypage": (context) => const ArtSummary(),
"/artdetailspage": (context) => const ArtDisplayDetails(),
}));
}