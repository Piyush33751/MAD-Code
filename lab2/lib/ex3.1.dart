import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: BMIAPP()));
}

class BMIAPP extends StatefulWidget {
  const BMIAPP({super.key});

  @override
  State<BMIAPP> createState() => _BMIApp();
}

class _BMIApp extends State<BMIAPP> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  double bmi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI calculator", style: TextStyle(fontSize: 50.0)),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Enter your weight',
                border: OutlineInputBorder(),
              ),
              style: const TextStyle(color: Colors.white),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: _heightController,
              decoration: const InputDecoration(
                labelText: 'Enter your height',
                border: OutlineInputBorder(),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),

            TextButton(
              child: const Text("Calculate"),
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {
                if (_heightController.text.trim().isEmpty ||
                    _nameController.text.trim().isEmpty) {
                  const snackBar2 = SnackBar(
                    content: Text(
                      'height must not be empty',
                      style: TextStyle(fontSize: 20),
                    ),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.purple,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar2);
                } else {
                  setState((){
                  double? height = double.parse(_heightController.text);
                  double? weight = double.parse(_nameController.text);
                  bmi = weight / (height * height);
                });}
              },
            ),
            const SizedBox(height: 20),

            Container(
              height: 100,
              width: 100,
              child: Text(
                "The BMI is $bmi",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

