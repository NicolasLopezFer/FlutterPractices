import 'package:flutter/material.dart';
import 'frase.dart';

class CartaFrase extends StatelessWidget {
  final Frase frase;
  final Function delete;

  CartaFrase({this.frase, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              frase.texto,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              frase.autor,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 8.0),
            TextButton(
              onPressed: delete,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.delete),
                  Text('Borrar frase'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
