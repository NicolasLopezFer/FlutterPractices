import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

void _openCamera() {
  var picture = ImagePicker.pickImage(
    source: ImageSource.camera,
  );
}

void _openGalery() {
  var picture = ImagePicker.pickImage(
    source: ImageSource.camera,
  );
}

class _HomeState extends State<Home> {
  Future<void> _optionsDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                      child: Text('Tomar fotogarfía'), onTap: () {}),
                  Padding(padding: EdgeInsets.all(8.0)),
                  GestureDetector(child: Text('Acceder Galeria'), onTap: () {}),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acceso a Camara'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _optionsDialogBox,
          child: Text('Presioname'),
        ),
      ),
    );
  }
}
