import 'package:flutter/material.dart';
import 'homepage.dart';
void main() => runApp(Leaf());

class Leaf extends StatelessWidget {
  const Leaf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        brightness: Brightness.light,
      ),

      home: HomePage(),
    );
  }
}