import 'package:flutter/material.dart';
import 'package:acceso_camara/home.dart';

void main() => runApp(
      MaterialApp(
        title: 'Acceso a camara',
        home: Home(),
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.red,
          accentColor: Colors.red,
        ),
      ),
    );
