import 'package:flutter/material.dart';

class Ubicacion extends StatefulWidget {
  @override
  _UbicacionState createState() => _UbicacionState();
}

class _UbicacionState extends State<Ubicacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Escoge una ubicacion'),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
