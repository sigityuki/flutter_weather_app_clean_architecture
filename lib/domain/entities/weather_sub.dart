import 'package:equatable/equatable.dart';

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
  final double? tempMax;
  final double? pressure;
  final double? humidity;

  const WeatherMainEntity(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity});

  @override
  List<Object?> get props =>
      [temp, feelsLike, tempMin, tempMax, pressure, humidity];
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

class WeatherCloudsEntity extends Equatable {
  final int? all;
  const WeatherCloudsEntity({
    this.all,
  });

  @override
  List<Object?> get props => [all];
}
