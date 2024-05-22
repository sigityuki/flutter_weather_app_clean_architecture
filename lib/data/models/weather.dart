import 'package:flutter_weather_app_clean_architecture/domain/entities/weather.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class WeatherModel extends WeatherEntity {
  @override
  final WeatherCoordModel? coord;
  @override
  final List<WeatherDescModel>? desc;
  @override
  final WeatherMainModel? main;
  @override
  final WeatherWindModel? wind;
  @override
  final WeatherSysModel? sys;

  const WeatherModel({
    this.coord,
    this.desc,
    String? base,
    this.main,
    double? visibility,
    this.wind,
    int? dt,
    this.sys,
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
          wind: wind,
          dt: dt,
          sys: sys,
          timezone: timezone,
          id: id,
          name: name,
          cod: cod,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}

@JsonSerializable()
class WeatherCoordModel extends WeatherCoordEntity {
  const WeatherCoordModel({
    super.lat,
    super.lon,
  });

  factory WeatherCoordModel.fromJson(Map<String, dynamic> json) => _$WeatherCoordModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherCoordModelToJson(this);
}

@JsonSerializable()
class WeatherDescModel extends WeatherDescEntity {
  const WeatherDescModel({
    super.id,
    super.main,
    super.description,
    super.icon,
  });

  factory WeatherDescModel.fromJson(Map<String, dynamic> json) => _$WeatherDescModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDescModelToJson(this);
}

@JsonSerializable()
class WeatherMainModel extends WeatherMainEntity {
  const WeatherMainModel({
    super.temp,
    super.feelsLike,
    super.tempMin,
    super.pressure,
    super.humidity,
  });

  factory WeatherMainModel.fromJson(Map<String, dynamic> json) => _$WeatherMainModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherMainModelToJson(this);
}

@JsonSerializable()
class WeatherWindModel extends WeatherWindEntity {
  const WeatherWindModel({
    super.speed,
    super.deg,
    super.gust,
  });

  factory WeatherWindModel.fromJson(Map<String, dynamic> json) => _$WeatherWindModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherWindModelToJson(this);
}

@JsonSerializable()
class WeatherSysModel extends WeatherSysEntity {
  const WeatherSysModel({
    super.type,
    super.id,
    super.sunrise,
    super.sunset,
  });

  factory WeatherSysModel.fromJson(Map<String, dynamic> json) => _$WeatherSysModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherSysModelToJson(this);
}
