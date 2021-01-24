import 'package:flutter/material.dart';
import 'package:world_time_app/paginas/home.dart';
import 'package:world_time_app/paginas/ubicacion.dart';
import 'package:world_time_app/paginas/carga.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => Carga(),
    '/home': (context) => Home(),
    '/ubicacion': (context) => Ubicacion(),
  }));
}
