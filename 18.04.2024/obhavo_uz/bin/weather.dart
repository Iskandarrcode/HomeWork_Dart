import 'dart:convert';
import 'dart:io';

void main() async {
  final weatherService = WeatherService();

  try {
    final cities = await UserInput.getCityNames();
    for (final city in cities) {
      final weatherData = await weatherService.fetchWeather(city);
      print(weatherData.toMessage());
    }
  } catch (e) {
    print('Error: $e');
  }
}

// class WeatherData
class WeatherData {
  final String city;
  final double temperature;
  final String description;

  WeatherData(this.city, this.temperature, this.description);

  @override
  String toString() {
    return 'City: $city\nTemperature: $temperature°C\nDescription: $description';
  }
}

// class WeatherService
class WeatherService {
  final String apiKey = "8bb3ec9716fab9a9852670e7a37afef6";
  final String apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

  Future<WeatherData> fetchWeather(String city) async {
    final url = '$apiUrl?q=$city&appid=$apiKey&units=metric';
    final request = await HttpClient().getUrl(Uri.parse(url));
    final response = await request.close();
    final jsonData = await response.transform(utf8.decoder).join();
    final parsedData = json.decode(jsonData);

    if (response.statusCode == 200) {
      final cityName = parsedData['name'];
      final temperature = parsedData['main']['temp'];
      final description = parsedData['weather'][0]['description'];
      return WeatherData(cityName, temperature, description);
    } else {
      throw Exception('Obihovo malumotlarini yuklab bolmadi $city');
    }
  }
}

// class UserInput
class UserInput {
  static Future<List<String>> getCityNames() async {
    stdout.write('Shahar nomlarini kiriting(vergul bilan): ');
    final input = stdin.readLineSync();
    return input!.split(',').map((city) => city.trim()).toList();
  }
}

// extension
extension MessageExtension on WeatherData {
  String toMessage() {
    return '\n$city Shahrida Ob-havo: $temperature°C\nOsmon-Holati: ${translateWeather(description)}\n';
  }
}

// Translate in Uzbek
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
