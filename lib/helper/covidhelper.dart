import 'dart:convert';
import 'package:http/http.dart' as http;

class CovidHelper {

  // country name data get
  Future<List> covidAPI() async {
    String link = "https://covid-19-statistics.p.rapidapi.com/regions";

     http.Response res = await http.get(
        Uri.parse(link),
        headers: {
          "x-rapidapi-key": "7473a090efmsh8abefaea3fb0dedp14b5d3jsn5c3d0a8029a4",
          "x-rapidapi-host": "covid-19-statistics.p.rapidapi.com"
        }
    );

     if (res.statusCode == 200) {
      var Response = jsonDecode(res.body);
      var data = Response["data"];
      return data;
    } else {
      throw Exception("Error");
    }
  }

  // country detail dataget

  Future<List> covidDetailAPI() async {

    String country = "Autauga";
    String link = "https://covid-19-statistics.p.rapidapi.com/reports?city_name=$country";

    http.Response res = await http.get(
        Uri.parse(link),
        headers: {
          "x-rapidapi-host": "covid-19-statistics.p.rapidapi.com",
          "x-rapidapi-key": "7473a090efmsh8abefaea3fb0dedp14b5d3jsn5c3d0a8029a4"
        }
    );

    if (res.statusCode == 200) {
      var Response = jsonDecode(res.body);
      var data = Response["data"];
      return data;
    } else {
      throw Exception("Error");
    }
  }


}
