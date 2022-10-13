import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 24, 25, 32),
        title: Text("NJIRA"),
      ),
      body: Container(
        child: Center(
          child: Text("Mapa API"),
        ),
      ),
    );
  }
}
