import 'package:flutter/material.dart';

class Shoping extends StatefulWidget {
  @override
  _ShopingState createState() => _ShopingState();
}

const List<Color> orangeGradients = [
  Color(0xffff9844),
  Color(0xfffe8853),
  Color(0xfffd7267),
];

const List<Color> purpleGradients = [
  Color(0xff7700ff),
  Color(0xff8351d4),
  Color(0xff764c8a),
];

const List<Color> blueGradients = [
  Color(0xff0f13f8),
  Color(0xff5570c7),
  Color(0xff5e8ef7),
];

class _ShopingState extends State<Shoping> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300, minWidth: 200),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 130.0,
              ),
              Container(
                color: Colors.pink,
                height: 200,
                width: 350,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 250,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  gradient: LinearGradient(
                      colors: orangeGradients,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 35.0, bottom: 16.0),
                  child: Text(
                    'Iniciando',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  gradient: LinearGradient(
                      colors: purpleGradients,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: Text(
                  'Hola',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  print('|------------------------------------------------|\n|                 Que Bien Vamos                 |\n|------------------------------------------------|');
                },
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      gradient: LinearGradient(
                          colors: blueGradients,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                    ),
                    child: ImageIcon(AssetImage("assets/images/nube.png"),
                        size: 100, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
