// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherFocusResult _$$_WeatherFocusResultFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherFocusResult(
      location: json['location'] == null
          ? null
          : ThisLocation.fromJson(json['location'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : ErrorMessage.fromJson(json['error'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : CurrentWeahter.fromJson(json['current'] as Map<String, dynamic>),
      forecast: json['forecast'] == null
          ? null
          : Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherFocusResultToJson(
        _$_WeatherFocusResult instance) =>
    <String, dynamic>{
      'location': instance.location?.toJson(),
      'error': instance.error?.toJson(),
      'current': instance.current?.toJson(),
      'forecast': instance.forecast?.toJson(),
    };

_$_ErrorMessage _$$_ErrorMessageFromJson(Map<String, dynamic> json) =>
    _$_ErrorMessage(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_ErrorMessageToJson(_$_ErrorMessage instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_ThisLocation _$$_ThisLocationFromJson(Map<String, dynamic> json) =>
    _$_ThisLocation(
      name: json['name'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$_ThisLocationToJson(_$_ThisLocation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
    };

_$_WeatherCondition _$$_WeatherConditionFromJson(Map<String, dynamic> json) =>
    _$_WeatherCondition(
      text: json['text'] as String,
      iconUrl: const IconUrlConverter().fromJson(json['icon'] as String),
      code: json['code'] as int,
    );

Map<String, dynamic> _$$_WeatherConditionToJson(_$_WeatherCondition instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': const IconUrlConverter().toJson(instance.iconUrl),
      'code': instance.code,
    };

_$_CurrentWeahter _$$_CurrentWeahterFromJson(Map<String, dynamic> json) =>
    _$_CurrentWeahter(
      temptInCelsius: (json['temp_c'] as num).toDouble(),
      condition:
          WeatherCondition.fromJson(json['condition'] as Map<String, dynamic>),
      humidity: json['humidity'] as int,
      feelsLikeInCelsius: (json['feelslike_c'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CurrentWeahterToJson(_$_CurrentWeahter instance) =>
    <String, dynamic>{
      'temp_c': instance.temptInCelsius,
      'condition': instance.condition,
      'humidity': instance.humidity,
      'feelslike_c': instance.feelsLikeInCelsius,
    };

_$_Forecast _$$_ForecastFromJson(Map<String, dynamic> json) => _$_Forecast(
      focusList: (json['forecastday'] as List<dynamic>)
          .map((e) => ForecastDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastToJson(_$_Forecast instance) =>
    <String, dynamic>{
      'forecastday': instance.focusList,
    };

_$_ForecastDay _$$_ForecastDayFromJson(Map<String, dynamic> json) =>
    _$_ForecastDay(
      date: json['date'] as String,
      forecast: ForecastWeather.fromJson(json['day'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForecastDayToJson(_$_ForecastDay instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.forecast,
    };

_$_ForecastWeather _$$_ForecastWeatherFromJson(Map<String, dynamic> json) =>
    _$_ForecastWeather(
      maxTempInCelsius: (json['maxtemp_c'] as num).toDouble(),
      minTempInCelsius: (json['mintemp_c'] as num).toDouble(),
      rainChanceInPercent: json['daily_chance_of_rain'] as int,
      snowChanceInPercent: json['daily_chance_of_snow'] as int,
      avgHumidity: json['avghumidity'] as int,
      condition:
          WeatherCondition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForecastWeatherToJson(_$_ForecastWeather instance) =>
    <String, dynamic>{
      'maxtemp_c': instance.maxTempInCelsius,
      'mintemp_c': instance.minTempInCelsius,
      'daily_chance_of_rain': instance.rainChanceInPercent,
      'daily_chance_of_snow': instance.snowChanceInPercent,
      'avghumidity': instance.avgHumidity,
      'condition': instance.condition,
    };

_$_PossibleLocation _$$_PossibleLocationFromJson(Map<String, dynamic> json) =>
    _$_PossibleLocation(
      name: json['name'] as String,
      region: json['region'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      url: (json['url'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PossibleLocationToJson(_$_PossibleLocation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'lat': instance.lat,
      'lon': instance.lon,
      'url': instance.url,
    };
