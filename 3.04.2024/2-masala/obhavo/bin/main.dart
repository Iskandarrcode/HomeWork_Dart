import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  // API KEY
  var apiKey = '8bb3ec9716fab9a9852670e7a37afef6';
  // Your City
  var city = 'Tashkent';
  // url
  var url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey');

  http.get(url).then((response) {
    if (response.statusCode == 200) {
      // weather
      var obhavo = jsonDecode(response.body);
      // temperatura farangate to C
      var tempC  = obhavo["main"]["temp"] - 273;
      // wind Speed 
      var windSpeed = obhavo["wind"]["speed"];
      // print weather information
      print("$city da Havo: $tempC C");
      print("Shamol tezligi: $windSpeed M/s");
    } else {
      print('ERROR !!!');
    }
  });
}