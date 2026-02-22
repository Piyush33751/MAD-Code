import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ArtApp()));
}

class ArtApp extends StatelessWidget {
  const ArtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Page'),
        backgroundColor: Colors.amber,
      ),
      
      backgroundColor:Colors.black,

      body: Container(
        
        child:Center(
          child:Column(
          children: [
            Container(
              height: 200,
              child: Image.asset("lib/assests/img/parasol.jpg"),
            ),
            const SizedBox(height: 10),
            Container(
              width: 300,
              height: 30,
              color: Colors.amber,
              child: const Text(
                'Woman  With A Parasol',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            Container(
              width: 300,
              height: 30,
              color: Colors.amber,
              child: const Text('1875 (oil on canvas)'),
            ),
            const SizedBox(height: 10),
            Container(
              child: const Text(
                "Claude Monet",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              child: const Text(
                "National Art Gallery washington DC",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),)
    );
  }
}
