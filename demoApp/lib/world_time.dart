import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String url;
  String flag;

  WorldTime({this.location, this.url, this.flag});

  Future<void> getTime() async {
    try {
      Response response =
          await get("http://worldtimeapi.org/api/timezone/$url");
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      DateTime date = DateTime.parse(datetime);
      time = DateFormat.yMMMEd().add_jms().format(date);
    } catch (e) {
      print("Error: $e");
      time = "Could not get time";
    }
  }
}
