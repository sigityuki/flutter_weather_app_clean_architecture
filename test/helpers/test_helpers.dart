import 'package:flutter_weather_app_clean_architecture/domain/repository/weather_repository.dart';
import 'package:flutter_weather_app_clean_architecture/domain/usecases/get_current_weather.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;

@GenerateMocks([
  WeatherRepository,
  GetCurrentWeatherUseCase,
  Dio,
], customMocks: [
  // MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
