import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;
  bool isDaytime;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get('https://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0, 3);

      DateTime now = DateTime.parse(datetime);
      if (offset.substring(0, 1) == '+') {
        now = now.add(Duration(hours: int.parse(offset.substring(1))));
      } else if (offset.substring(0, 1) == '-') {
        now = now.subtract(Duration(hours: int.parse(offset.substring(1))));
      }
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('Caught error: $e');
      time = 'Error cargando la hora';
    }
  }
}

//WorldTime variable = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
