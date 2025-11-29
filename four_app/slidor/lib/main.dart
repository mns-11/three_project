import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('value: ${(_value)}', style: TextStyle(fontSize: 30))],
      ),
      
    );
    
  }
}
