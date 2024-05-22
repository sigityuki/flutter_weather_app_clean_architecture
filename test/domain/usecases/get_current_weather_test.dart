import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_app_clean_architecture/domain/entities/weather.dart';
import 'package:flutter_weather_app_clean_architecture/domain/usecases/get_current_weather.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helpers.mocks.dart';

// void main() {
//   late GetCurrentWeatherUseCase getCurrentWeatherUseCase;
//   late MockWeatherRepository mockWeatherRepository;

//   setUp(() {
//     mockWeatherRepository = MockWeatherRepository();
//     getCurrentWeatherUseCase = GetCurrentWeatherUseCase(mockWeatherRepository);
//   });

//   const testWeatherDetail = WeatherEntity(
//     base: 'stations',
//     visibility: 10000,
//     dt: 1716264006,
//     temp: 300,
//     pressure: 1015,
//     humidity: 99,
//     lat: 1,
//     long: 1,
//     windSpeed: 5.45,
//     windDeg: 200,
//     windGust: 5.3,
//   );

//   const testCityName = "Jakarta";

//   test('Should get current weather detail from the repository', () async {
//     // arrange
//     when(mockWeatherRepository.getCurrentWeather(testCityName)).thenAnswer((_) async => const Right(testWeatherDetail));

//     // act
//     final result = await getCurrentWeatherUseCase.execute(testCityName);

//     // assert
//     expect(result, const Right(testWeatherDetail));
//   });
// }
