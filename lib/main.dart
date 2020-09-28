import 'package:flutter/material.dart';
//import 'package:flutter_beginners/pages/primera_pagina.dart';
import 'package:flutter_beginners/pages/register.dart';
import 'package:flutter_beginners/pages/shoping.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iniciando Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    Widget child;
    switch (_index) {
      case 0:
        child = FlutterLogo();
        break;
      case 1:
        child = MaterialApp(
            debugShowCheckedModeBanner: false, home: new Register());
        break;
      case 2:
        child =
            MaterialApp(debugShowCheckedModeBanner: false, home: new Shoping());
    }

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blueAccent, size: 30.0),
              title: Text("home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.format_align_center,
                  color: Colors.blueAccent, size: 30.0),
              title: Text("Register")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,
                  color: Colors.orangeAccent, size: 30.0),
              title: Text("shopping")),
        ],
      ),
    );
  }
}
