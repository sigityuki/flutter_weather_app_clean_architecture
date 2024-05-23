import 'package:flutter_weather_app_clean_architecture/data/models/weather_sub.dart';
import 'package:flutter_weather_app_clean_architecture/domain/entities/weather.dart';

class WeatherModel extends WeatherEntity {
  const WeatherModel({
    WeatherCoordModel? coord,
    List<WeatherDescModel>? desc,
    String? base,
    WeatherMainModel? main,
    double? visibility,
    WeatherCloudsModel? clouds,
    WeatherWindModel? wind,
    int? dt,
    WeatherSysModel? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) : super(
          coord: coord,
          desc: desc,
          base: base,
          main: main,
          visibility: visibility,
          clouds: clouds,
          wind: wind,
          dt: dt,
          sys: sys,
          timezone: timezone,
          id: id,
          name: name,
          cod: cod,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      coord: WeatherCoordModel.fromJson(json['coord']),
      desc: (json['weather'] as List<dynamic>)
          .map((weather) => WeatherDescModel.fromJson(weather))
          .toList(),
      base: json['base'],
      main: WeatherMainModel.fromJson(json['main']),
      visibility: (json['visibility'] as num?)?.toDouble(),
      clouds: WeatherCloudsModel.fromJson(json['clouds']),
      wind: WeatherWindModel.fromJson(json['wind']),
      dt: (json['dt'] as num?)?.toInt(),
      sys: WeatherSysModel.fromJson(json['sys']),
      timezone: (json['timezone'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'],
      cod: (json['cod'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'coord': (coord as WeatherCoordModel).toJson(),
      'weather': desc!
          .map((weather) => (weather as WeatherDescModel).toJson())
          .toList(),
      'base': base,
      'main': (main as WeatherMainModel).toJson(),
      'visibility': visibility,
      'clouds': (clouds as WeatherCloudsModel).toJson(),
      'wind': (wind as WeatherWindModel).toJson(),
      'dt': dt,
      'sys': (sys as WeatherSysModel).toJson(),
      'timezone': timezone,
      'id': id,
      'name': name,
      'cod': cod,
    };
  }
}
