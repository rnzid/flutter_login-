import 'package:flutter/material.dart';
import './Login.dart';

void main() => runApp(Photos());

class Photos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photos',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      
    );
  }
}
