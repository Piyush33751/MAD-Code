import 'package:flutter/material.dart';

class PlayColumn extends StatelessWidget {
  const PlayColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
        'Hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
        color: Colors.white,
        ),
        )),
        body: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(
          width: 100,
          color: Colors.orange,
          child: const Text('Singapore'),
          ),
          Container(
          width: 200,
          color: Colors.yellow,
          child: const Text('Singapore'),
          ),
          Container(
          width: 300,
          color: Colors.cyanAccent,
          child: const Text('Singapore'),
          ),
          ]) // Column
          ); // Scaffold
          }
          }
      