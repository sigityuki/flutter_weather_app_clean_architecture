import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_app_clean_architecture/data/models/weather.dart';
import 'package:flutter_weather_app_clean_architecture/domain/entities/weather.dart';

import '../../helpers/json_reader.dart';

void main() {
  // const testWeatherModel = WeatherModel(
  //   base: 'stations',
  //   visibility: 10000,
  //   dt: 1716264006,
  //   temp: 300,
  //   pressure: 1015,
  //   humidity: 99,
  //   lat: 1,
  //   long: 1,
  //   windSpeed: 5.45,
  //   windDeg: 200,
  //   windGust: 5.3,
  // );

  // test('Should be a subclass of Weather Entity', () async {
  //   // assert
  //   expect(testWeatherModel, isA<WeatherEntity>());
  // });

  test('Should return a valid model from json', () async {
    // arrange
    final Map<String, dynamic> jsonMap = json.decode(readJson('helpers/dummy_data/dummy_weather_response.json'));

    // act
    final result = WeatherModel.fromJson(jsonMap);

    print(result);
    // final result2 = result.toJson();
    // print(result2);

    // expect
    expect(result, isA<WeatherModel>());
  });

  // test('Should return a valid json from model', () async {
  //   // arrange
  //   final Map<String, dynamic> jsonMap = json.decode(readJson('helpers/dummy_data/dummy_weather_response.json'));

  //   // act
  //   final result = WeatherModel.fromJson(jsonMap);

  //   // expect
  //   expect(result, isA<WeatherModel>());
  // });
}
