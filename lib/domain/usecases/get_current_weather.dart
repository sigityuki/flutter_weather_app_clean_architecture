import 'package:flutter_weather_app_clean_architecture/core/error/failure.dart';
import 'package:flutter_weather_app_clean_architecture/domain/entities/weather.dart';
import 'package:flutter_weather_app_clean_architecture/domain/repository/weather_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository _weatherRepository;
  GetCurrentWeatherUseCase(this._weatherRepository);

  Future<Either<Failure, WeatherEntity>> execute(String cityName) {
    return _weatherRepository.getCurrentWeather(cityName);
  }
}
