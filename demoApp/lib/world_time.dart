import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String url;
  String flag;
  bool isDayTime;
  WorldTime({this.location, this.url, this.flag, this.isDayTime});

  Future<void> getTime() async {
    try {
      Response response =
          await get("http://worldtimeapi.org/api/timezone/$url");
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      DateTime date = DateTime.parse(datetime);
      time = DateFormat.jm().format(date);
      isDayTime = date.hour > 6 && date.hour < 20;
    } catch (e) {
      print("Error: $e");
      time = "Could not get time";
    }
  }
}
