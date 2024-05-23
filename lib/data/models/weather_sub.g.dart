// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_sub.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherCoordModel _$WeatherCoordModelFromJson(Map<String, dynamic> json) =>
    WeatherCoordModel(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherCoordModelToJson(WeatherCoordModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

WeatherDescModel _$WeatherDescModelFromJson(Map<String, dynamic> json) =>
    WeatherDescModel(
      id: (json['id'] as num?)?.toDouble(),
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$WeatherDescModelToJson(WeatherDescModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

WeatherMainModel _$WeatherMainModelFromJson(Map<String, dynamic> json) =>
    WeatherMainModel(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      tempMin: (json['temp_min'] as num?)?.toDouble(),
      tempMax: (json['temp_max'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherMainModelToJson(WeatherMainModel instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'feels_like': instance.feelsLike,
    };

WeatherWindModel _$WeatherWindModelFromJson(Map<String, dynamic> json) =>
    WeatherWindModel(
      speed: (json['speed'] as num?)?.toDouble(),
      deg: (json['deg'] as num?)?.toDouble(),
      gust: (json['gust'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherWindModelToJson(WeatherWindModel instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

WeatherSysModel _$WeatherSysModelFromJson(Map<String, dynamic> json) =>
    WeatherSysModel(
      type: (json['type'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      sunrise: (json['sunrise'] as num?)?.toInt(),
      sunset: (json['sunset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WeatherSysModelToJson(WeatherSysModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

WeatherCloudsModel _$WeatherCloudsModelFromJson(Map<String, dynamic> json) =>
    WeatherCloudsModel(
      all: (json['all'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WeatherCloudsModelToJson(WeatherCloudsModel instance) =>
    <String, dynamic>{
      'all': instance.all,
    };
