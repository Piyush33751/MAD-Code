import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ArtApp()));
}

class ArtApp extends StatefulWidget {
  const ArtApp({super.key});

  @override
  State<ArtApp> createState() => _ArtAppState();
}

class _ArtAppState extends State<ArtApp> {
  var thige='set background to pink';
  var backgrnd=Colors.black;
  void func1(){
  setState((){
    if(thige=='set background to pink'){
      backgrnd=Colors.pink;
      thige='set background to black';
    }
    else{
      backgrnd=Colors.black;
      thige='set background to pink';
    }
      
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Page'),
        backgroundColor: Colors.amber,
      ),
      
      backgroundColor:backgrnd,

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
            const SizedBox(height: 10),
            FilledButton(onPressed: func1, child: Text(thige)),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),)
    );
  }
}
