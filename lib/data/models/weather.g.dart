// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      coord: json['coord'] == null
          ? null
          : WeatherCoordModel.fromJson(json['coord'] as Map<String, dynamic>),
      desc: (json['desc'] as List<dynamic>?)
          ?.map((e) => WeatherDescModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      base: json['base'] as String?,
      main: json['main'] == null
          ? null
          : WeatherMainModel.fromJson(json['main'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num?)?.toDouble(),
      wind: json['wind'] == null
          ? null
          : WeatherWindModel.fromJson(json['wind'] as Map<String, dynamic>),
      dt: (json['dt'] as num?)?.toInt(),
      sys: json['sys'] == null
          ? null
          : WeatherSysModel.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: (json['timezone'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      cod: (json['cod'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'base': instance.base,
      'visibility': instance.visibility,
      'dt': instance.dt,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
      'coord': instance.coord,
      'desc': instance.desc,
      'main': instance.main,
      'wind': instance.wind,
      'sys': instance.sys,
    };

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
      feelsLike: (json['feelsLike'] as num?)?.toDouble(),
      tempMin: (json['tempMin'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherMainModelToJson(WeatherMainModel instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'tempMin': instance.tempMin,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
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
