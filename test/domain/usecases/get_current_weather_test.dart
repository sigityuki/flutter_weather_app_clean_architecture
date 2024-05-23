import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_app_clean_architecture/domain/entities/weather.dart';
import 'package:flutter_weather_app_clean_architecture/domain/entities/weather_sub.dart';
import 'package:flutter_weather_app_clean_architecture/domain/usecases/get_current_weather.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helpers.mocks.dart';

void main() {
  late GetCurrentWeatherUseCase getCurrentWeatherUseCase;
  late MockWeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    getCurrentWeatherUseCase = GetCurrentWeatherUseCase(mockWeatherRepository);
  });

  WeatherEntity testWeatherEntity = const WeatherEntity(
    coord: WeatherCoordEntity(
      lat: 1,
      lon: 1,
    ),
    desc: [
      WeatherDescEntity(
        id: 804,
        main: "Clouds",
        description: "overcast clouds",
        icon: "04d",
      )
    ],
    base: "stations",
    main: WeatherMainEntity(
      temp: 300.37,
      feelsLike: 305.66,
      tempMin: 300.37,
      tempMax: 300.37,
      pressure: 1014,
      humidity: 99,
    ),
    visibility: 10000,
    clouds: WeatherCloudsEntity(all: 100),
    wind: WeatherWindEntity(speed: 5.65, deg: 191, gust: 5.21),
    dt: 1716273904,
    sys: WeatherSysEntity(
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

  const testCityName = "Jakarta";

  test('Should get current weather detail from the repository', () async {
    // arrange
    when(mockWeatherRepository.getCurrentWeather(testCityName))
        .thenAnswer((_) async => Right(testWeatherEntity));

    // act
    final result = await getCurrentWeatherUseCase.execute(testCityName);

    // assert
    expect(result, Right(testWeatherEntity));
  });
}
