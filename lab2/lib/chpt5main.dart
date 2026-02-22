import 'package:flutter/material.dart';
import 'package:lab2/chpt5.dart';
import 'package:lab2/newart.dart';
void main() {
runApp(MaterialApp(
home: ArtSummary(),
routes: {
"/newartpage": (context) =>  NewArt(),
"/artsummarypage": (context) => ArtSummary(),
}));
}
