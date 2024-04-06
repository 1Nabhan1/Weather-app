import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/core/constants/Api/api.dart';
import 'package:get/get.dart'; // Import the get package
import '../../../presentation/Weather_Page/models/Weather_models/weather_model.dart'; // Import your WeatherModel class

class WeatherService extends GetxController {
  static const String _baseUrl = Api.baseUrl;
  static const String _apiKey = Api.apiKey;

  Future<WeatherModel> getWeatherByCity(String cityName) async {
    final String apiUrl =
        '$_baseUrl/weather?q=$cityName&appid=$_apiKey&units=metric';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        // Parse the JSON data into WeatherModel using its fromJson constructor
        final WeatherModel weatherModel = WeatherModel.fromJson(responseData);
        return weatherModel;
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}
