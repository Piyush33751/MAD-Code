import 'package:flutter/material.dart';

void main() {
runApp(const MaterialApp(
home: ArtPage()
));
} 

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ArtPage extends StatelessWidget {
const ArtPage({super.key});
@override
Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text('Art Page'),
      backgroundColor: Colors.yellow,
    ),
    body: const Center(
      child: Column(
        children: const <Widget>[
          Text(
            'This is the Art Page',
          ),
          
        ],
      ),
    ),
   );
} // end of build
} 