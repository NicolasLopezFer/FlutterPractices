import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listado(),
  ));
}

class Listado extends StatefulWidget {
  @override
  _ListadoState createState() => _ListadoState();
}

class _ListadoState extends State<Listado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        title: Text('Listado'),
        backgroundColor: Colors.red[300],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      ),
    );
  }
}
