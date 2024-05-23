import 'package:flutter_weather_app_clean_architecture/domain/entities/weather_sub.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_sub.g.dart';

@JsonSerializable()
class WeatherCoordModel extends WeatherCoordEntity {
  const WeatherCoordModel({
    super.lat,
    super.lon,
  });

  factory WeatherCoordModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherCoordModelFromJson(json);

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

  factory WeatherDescModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDescModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDescModelToJson(this);
}

@JsonSerializable()
class WeatherMainModel extends WeatherMainEntity {
  @JsonKey(name: 'temp_min')
  final double? tempMin;

  @JsonKey(name: 'temp_max')
  final double? tempMax;

  @JsonKey(name: 'feels_like')
  final double? feelsLike;

  const WeatherMainModel({
    super.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    super.pressure,
    super.humidity,
  }) : super(
          feelsLike: feelsLike,
          tempMin: tempMin,
          tempMax: tempMax,
        );

  factory WeatherMainModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherMainModelToJson(this);
}

@JsonSerializable()
class WeatherWindModel extends WeatherWindEntity {
  const WeatherWindModel({
    super.speed,
    super.deg,
    super.gust,
  });

  factory WeatherWindModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherWindModelFromJson(json);

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

  factory WeatherSysModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherSysModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherSysModelToJson(this);
}

@JsonSerializable()
class WeatherCloudsModel extends WeatherCloudsEntity {
  const WeatherCloudsModel({
    super.all,
  });

  factory WeatherCloudsModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherCloudsModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherCloudsModelToJson(this);
}
