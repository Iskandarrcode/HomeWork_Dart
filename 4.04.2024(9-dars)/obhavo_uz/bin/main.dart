import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  print("Qaysi shaharning ob-havo ma'lumotlarini kerak?");
  String? city = stdin.readLineSync()!;
  var weather1 = Weather(city);
  weather1.weathers();
}

class Weather {
  String city;

  Weather(this.city);

  void weathers() {
    // API KALITI
    var apiKey = '8bb3ec9716fab9a9852670e7a37afef6';
    // URL
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey');
    http.get(url).then((response) {
      if (response.statusCode == 200) {
        // ob-havo ma'lumotlari
        var obhavo = jsonDecode(response.body);
        // harorat fahrenheitdan gradusga o'tkazish
        var tempC = (obhavo["main"]["temp"] - 273).toInt();
        // shamol tezligi
        var windSpeed = obhavo["wind"]["speed"];
        // ob-havo holati
        var weatherSky = obhavo["weather"][0]["description"];
        // ob-havo ma'lumotlarini chop etish
        print("$city shahrida Ob-havo: $tempC C");
        print("Shamol tezligi: $windSpeed m/s");
        print("Ob-havo holati: ${translateWeather(weatherSky)}");
      } else {
        print('XATOLIK !!!');
      }
    });
  }

// Translate Weather 
  String translateWeather(String weatherSky) {
    switch (weatherSky) {
      case 'clear sky':
        return 'Musaffo osmon';
      case 'few clouds':
        return 'Kam bulutli';
      case 'scattered clouds':
        return 'Tarqoq bulutlar';
      case 'broken clouds':
        return 'Parcha-parcha bulutlar';
      case 'shower rain':
        return "Yomg'irli bulutlar";
      case 'rain':
        return "Yomg'ir";
      case 'thunderstorm':
        return "Momaqaldiroq";
      case 'snow':
        return 'Qor';
      case 'mist':
        return 'Tuman';
      default:
        return 'noma\'lum';
    }
  }
}
