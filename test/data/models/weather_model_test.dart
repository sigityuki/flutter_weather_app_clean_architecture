import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_app_clean_architecture/data/models/weather.dart';
import 'package:flutter_weather_app_clean_architecture/data/models/weather_sub.dart';
import 'package:flutter_weather_app_clean_architecture/domain/entities/weather.dart';

import '../../helpers/json_reader.dart';

void main() {
  WeatherModel testWeatherModel = const WeatherModel(
    coord: WeatherCoordModel(
      lat: 1,
      lon: 1,
    ),
    desc: [
      WeatherDescModel(
        id: 804,
        main: "Clouds",
        description: "overcast clouds",
        icon: "04d",
      )
    ],
    base: "stations",
    main: WeatherMainModel(
      temp: 300.37,
      feelsLike: 305.66,
      tempMin: 300.37,
      tempMax: 300.37,
      pressure: 1014,
      humidity: 99,
    ),
    visibility: 10000,
    clouds: WeatherCloudsModel(all: 100),
    wind: WeatherWindModel(speed: 5.65, deg: 191, gust: 5.21),
    dt: 1716273904,
    sys: WeatherSysModel(
      id: 2041606,
      sunrise: 1716270465,
      sunset: 1716314267,
      type: 2,
    ),
    timezone: 0,
    id: 0,
    name: '',
    cod: 200,
  );

  test('Should be a subclass of Weather Entity', () async {
    // assert
    expect(testWeatherModel, isA<WeatherEntity>());
  });

  test('Should return a valid model from json', () async {
    // arrange
    final Map<String, dynamic> jsonMap =
        json.decode(readJson('helpers/dummy_data/dummy_weather_response.json'));

    // act
    final result = WeatherModel.fromJson(jsonMap);

    // expect
    expect(result, isA<WeatherModel>());
  });

  test('Should return a valid json from model', () async {
    // arrange
    final Map<String, dynamic> jsonMap =
        json.decode(readJson('helpers/dummy_data/dummy_weather_response.json'));

    // act
    final result = testWeatherModel.toJson();
    // expect
    expect(result, equals(jsonMap));
  });
}
