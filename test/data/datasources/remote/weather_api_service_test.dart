import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_app_clean_architecture/core/constants/constants.dart';
import 'package:flutter_weather_app_clean_architecture/data/datasources/remote/weather_api_service.dart';
import 'package:flutter_weather_app_clean_architecture/data/models/weather.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';

import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late WeatherApiService weatherApiService;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    weatherApiService = WeatherApiService(mockDio);
  });

  test('Should get current weather detail from the repository', () async {
    // Arrange
    final double latitude = 1.0;
    final double longitude = 1.0;
    final String apiKey = "your_api_key"; // Replace with your actual API key
    final WeatherModel expectedWeatherModel =
        WeatherModel(); // Create a mock WeatherModel instance

    // Mock response data
    final mockResponse = HttpResponse<WeatherModel>(
      expectedWeatherModel,
      Response(
          data: null,
          statusCode: 200,
          requestOptions:
              RequestOptions()), // Replace 'null' with actual data if needed
    );

    // Stubbing the getWeather method of mockDio
    when(weatherApiService.getWeather(
      latitude,
      longitude,
      apiKey,
    )).thenAnswer((Invocation) async => mockResponse);

    // Act
    final result =
        await weatherApiService.getWeather(latitude, longitude, apiKey);

    // Assert
    expect(
        result,
        equals(
            expectedWeatherModel)); // Check if the result matches the expected WeatherModel
  });
}
