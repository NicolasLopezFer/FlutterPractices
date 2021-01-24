import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Carga extends StatefulWidget {
  @override
  _CargaState createState() => _CargaState();
}

class _CargaState extends State<Carga> {
  void getTime() async {
    //make request
    Response response =
        await get('https://worldtimeapi.org/api/timezone/America/Bogota');
    Map data = jsonDecode(response.body);
    //print(data);
    //get datos
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(0, 3);
    //print(datetime);
    //print(offset);

    DateTime now = DateTime.parse(datetime);
    if (offset.substring(0, 1) == '+') {
      now = now.add(Duration(hours: int.parse(offset.substring(1))));
    } else if (offset.substring(0, 1) == '-') {
      now = now.subtract(Duration(hours: int.parse(offset.substring(1))));
    }
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Pagina de carga'),
    );
  }
}
