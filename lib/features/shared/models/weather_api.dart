// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import 'package:climate/features/shared/models/weather.dart';

part 'weather_api.freezed.dart';
part 'weather_api.g.dart';

@freezed
class WeatherFocusResult with _$WeatherFocusResult {
  const WeatherFocusResult._();
  @JsonSerializable(explicitToJson: true)
  const factory WeatherFocusResult({
    ThisLocation? location,
    ErrorMessage? error,
    CurrentWeahter? current,
    Forecast? forecast,
  }) = _WeatherFocusResult;

  factory WeatherFocusResult.fromJson(Map<String, dynamic> json) =>
      _$WeatherFocusResultFromJson(json);
}

@freezed
class ErrorMessage with _$ErrorMessage {
  const ErrorMessage._();
  const factory ErrorMessage({
    required String message,
  }) = _ErrorMessage;

  factory ErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessageFromJson(json);
}

@freezed
class ThisLocation with _$ThisLocation {
  const ThisLocation._();
  const factory ThisLocation({
    required String name,
    required String region,
    required String country,
  }) = _ThisLocation;
  factory ThisLocation.fromJson(Map<String, dynamic> json) =>
      _$ThisLocationFromJson(json);
}

@freezed
class WeatherCondition with _$WeatherCondition {
  const WeatherCondition._();
  const factory WeatherCondition({
    required String text,
    @IconUrlConverter() @JsonKey(name: 'icon') required String iconUrl,
    required int code,
  }) = _WeatherCondition;

  factory WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);
}

@freezed
class CurrentWeahter with _$CurrentWeahter {
  const CurrentWeahter._();
  const factory CurrentWeahter({
    @JsonKey(name: 'temp_c') required double temptInCelsius,
    required WeatherCondition condition,
    required int humidity,
    @JsonKey(name: 'feelslike_c') required double feelsLikeInCelsius,
  }) = _CurrentWeahter;
  factory CurrentWeahter.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeahterFromJson(json);
}

@freezed
class Forecast with _$Forecast {
  const Forecast._();
  const factory Forecast({
    @JsonKey(name: 'forecastday') required List<ForecastDay> focusList,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}

@freezed
class ForecastDay with _$ForecastDay {
  const ForecastDay._();
  const factory ForecastDay({
    required String date,
    @JsonKey(name: 'day') required ForecastWeather forecast,
  }) = _ForecastDay;
  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}

@freezed
class ForecastWeather with _$ForecastWeather {
  const ForecastWeather._();
  const factory ForecastWeather({
    @JsonKey(name: 'maxtemp_c') required double maxTempInCelsius,
    @JsonKey(name: 'mintemp_c') required double minTempInCelsius,
    @JsonKey(name: 'daily_chance_of_rain') required int rainChanceInPercent,
    @JsonKey(name: 'daily_chance_of_snow') required int snowChanceInPercent,
    @JsonKey(name: 'avghumidity') required int avgHumidity,
    required WeatherCondition condition,
  }) = _ForecastWeather;
  factory ForecastWeather.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherFromJson(json);
}

@freezed
class PossibleLocation with _$PossibleLocation {
  const PossibleLocation._();

  const factory PossibleLocation({
    required String name,
    required String region,
    required double lat,
    required double lon,
    required double url,
  }) = _PossibleLocation;

  String get fullLocation => name + ', ' + region;

  factory PossibleLocation.fromJson(Map<String, dynamic> json) =>
      _$PossibleLocationFromJson(json);
}

class IconUrlConverter implements JsonConverter<String, String> {
  const IconUrlConverter();

  @override
  String fromJson(String json) {
    return 'https:' + json;
  }

  @override
  String toJson(String object) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

AfterConvert convertApiWeahter(WeatherFocusResult apiResult) {
  ThisLocation? thisLocation = apiResult.location;
  CurrentWeahter? currentWeahter = apiResult.current;
  List<ForecastDay>? forecastWeather = apiResult.forecast?.focusList;
  ErrorMessage? errorMessage = apiResult.error;

  if (errorMessage != null) {
    // catching error msg. but, i think it is not necessary.
    return AfterConvert(errorMsg: errorMessage.message.toString());
  } else {
    Current current = Current(
      temp: currentWeahter!.feelsLikeInCelsius,
      conditionText: currentWeahter.condition.text,
      conditionCode: currentWeahter.condition.code,
      humidity: currentWeahter.humidity,
      feelsLike: currentWeahter.feelsLikeInCelsius,
    );

    List<Forecasting> forecastList = [];

    for (ForecastDay e in forecastWeather!) {
      final String now = DateFormat('yyyy-MM-dd').format(DateTime.now());
      final String dayName = DateFormat('EEEE').format(DateTime.parse(e.date));
      final ForecastWeather value = e.forecast;
      if (now != e.date) {
        forecastList.add(Forecasting(
          iconUrl: value.condition.iconUrl,
          dayName: dayName,
          maxTemp: value.maxTempInCelsius,
          minTemp: value.minTempInCelsius,
          rainChancePercent: value.rainChanceInPercent,
          snowChancePercent: value.snowChanceInPercent,
          avgHumidity: value.avgHumidity,
        ));
      }
    }
    return AfterConvert(
      thisLocation: thisLocation,
      current: current,
      forecast: forecastList,
    );
  }
}

class AfterConvert {
  Current? current;
  List<Forecasting>? forecast;
  String? errorMsg;
  ThisLocation? thisLocation;
  AfterConvert({
    this.current,
    this.forecast,
    this.errorMsg,
    this.thisLocation,
  });
}


// WeatherFocusResult
//   - ThisLocation
//   - CurrentWeahter
//       - WeatherCondition
//   - Forecast
//       - ForecastDay
//           - List<FocusDay>
//                 - FocusWeather