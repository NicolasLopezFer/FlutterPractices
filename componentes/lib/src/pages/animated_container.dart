import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated container page'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadiusGeometry,
            color: _color,
          ),
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarFomra,
        child: Icon(Icons.autorenew),
      ),
    );
  }

  void _cambiarFomra() {
    var rng = new Random();
    setState(() {
      _width = rng.nextInt(300).toDouble();
      _height = rng.nextInt(300).toDouble();
      _color = Color.fromRGBO(rng.nextInt(255), rng.nextInt(255),
          rng.nextInt(255), rng.nextDouble());
      _borderRadiusGeometry =
          BorderRadius.circular(rng.nextInt(100).toDouble());
    });
  }
}
