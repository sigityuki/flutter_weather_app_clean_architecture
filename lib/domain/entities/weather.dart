import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final WeatherCoordEntity? coord;
  final List<WeatherDescEntity>? desc;
  final String? base;
  final WeatherMainEntity? main;
  final double? visibility;
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
    this.wind,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  @override
  List<Object?> get props => [coord, desc, base, main, visibility, wind, dt, sys, timezone, id, name, cod];
}

class WeatherCoordEntity extends Equatable {
  final double? lat;
  final double? lon;

  const WeatherCoordEntity({this.lat, this.lon});

  @override
  List<Object?> get props => [lat, lon];
}

class WeatherDescEntity extends Equatable {
  final double? id;
  final String? main;
  final String? description;
  final String? icon;

  const WeatherDescEntity({this.id, this.main, this.description, this.icon});

  @override
  List<Object?> get props => [id, main, description, icon];
}

class WeatherMainEntity extends Equatable {
  final double? temp;
  final double? feelsLike;
  final double? tempMin;
  final double? pressure;
  final double? humidity;

  const WeatherMainEntity({this.temp, this.feelsLike, this.tempMin, this.pressure, this.humidity});

  @override
  List<Object?> get props => [temp, feelsLike, tempMin, pressure, humidity];
}

class WeatherWindEntity extends Equatable {
  final double? speed;
  final double? deg;
  final double? gust;

  const WeatherWindEntity({this.speed, this.deg, this.gust});

  @override
  List<Object?> get props => [speed, deg, gust];
}

class WeatherSysEntity extends Equatable {
  final int? type;
  final int? id;
  final int? sunrise;
  final int? sunset;

  const WeatherSysEntity({this.type, this.id, this.sunrise, this.sunset});

  @override
  List<Object?> get props => [type, id, sunrise, sunset];
}
