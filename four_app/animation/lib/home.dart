import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //SingleTickerProviderStateMixin كلاس عشان اقدر اشغل الthis in this example
  late AnimationController _controller;
  late Animation<Alignment> _alignmentAnimation;
  // double _value = 0;
  // double _width = 80;
  // double _height = 80;
  // Color _color = Colors.blue;
  // double _borderRadius = 200;
  // bool vesbale = true;
  // double _x = 0;
  // double _y = 0;
  // double _Padding = 0;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _alignmentAnimation = AlignmentTween(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to Flutter world',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2,
            wordSpacing: 4,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: AlignTransition(
          alignment: _alignmentAnimation,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlutterLogo(size: 200),
          ),
        ),
      ),
    );
  }
}
