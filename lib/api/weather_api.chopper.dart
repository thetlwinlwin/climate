// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$WeatherApiService extends WeatherApiService {
  _$WeatherApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WeatherApiService;

  @override
  Future<Response<AfterConvert>> getForecastWeather(
      {required String commaSeparatedLatLon,
      int days = 2,
      String aqi = 'no',
      String alerts = 'no'}) {
    final $url = 'forecast.json';
    final $params = <String, dynamic>{
      'q': commaSeparatedLatLon,
      'days': days,
      'aqi': aqi,
      'alerts': alerts
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<AfterConvert, AfterConvert>($request);
  }

  @override
  Future<Response<List<PossibleLocation>>> locationSearchResults(
      {required String searchName}) {
    final $url = 'search.json';
    final $params = <String, dynamic>{'q': searchName};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<PossibleLocation>, PossibleLocation>($request);
  }
}
