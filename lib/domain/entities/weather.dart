import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app_clean_architecture/domain/entities/weather_sub.dart';

class WeatherEntity extends Equatable {
  final WeatherCoordEntity? coord;
  final List<WeatherDescEntity>? desc;
  final String? base;
  final WeatherMainEntity? main;
  final double? visibility;
  final WeatherCloudsEntity? clouds;
  final WeatherWindEntity? wind;
  final int? dt;
  final WeatherSysEntity? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;

  const WeatherEntity({
    this.coord,
    this.desc,
    this.base,
    this.main,
    this.visibility,
    this.clouds,
    this.wind,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  @override
  List<Object?> get props => [
        coord,
        desc,
        base,
        main,
        visibility,
        clouds,
        wind,
        dt,
        sys,
        timezone,
        id,
        name,
        cod
      ];
}
