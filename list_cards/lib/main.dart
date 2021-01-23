import 'package:flutter/material.dart';
import 'frase.dart';
import 'carta_frase.dart';

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
  List<Frase> frases = [
    Frase(
        autor: 'Nicolas Lopez',
        texto: 'Frase numero 1 Frase numero 1 Frase numero 1'),
    Frase(
        autor: 'Nicolas Lopez',
        texto: 'Frase numero 2 Frase numero 2 Frase numero 2 Frase numero 2'),
    Frase(
        autor: 'Nicolas Lopez',
        texto:
            'Frase numero 3 Frase numero 3 Frase numero 3 Frase numero 3 Frase numero 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Listado'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: frases
            .map((frase) => CartaFrase(
                frase: frase,
                delete: () {
                  setState(() {
                    frases.remove(frase);
                  });
                }))
            .toList(),
      ),
    );
  }
}
