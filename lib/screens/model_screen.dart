import 'package:flutter/material.dart';

class ModelScreen extends StatefulWidget {
  static const String id = 'moder_screen';

  @override
  _ModelScreenState createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Model Screen',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
