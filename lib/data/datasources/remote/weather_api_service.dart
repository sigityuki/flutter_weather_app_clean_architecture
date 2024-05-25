import 'package:dio/dio.dart';
import 'package:flutter_weather_app_clean_architecture/core/constants/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_weather_app_clean_architecture/data/models/weather.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl: Urls.weatherApi)
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio) = _WeatherApiService;

  @GET('/weather')
  Future<HttpResponse<WeatherModel>> getWeather(
    @Query('lat') double lat,
    @Query('lon') double lon,
    @Query('appid') String appid,
  );
}
