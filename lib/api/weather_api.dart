import 'package:chopper/chopper.dart';
import 'package:climate/api/converters.dart';
import 'package:climate/api/interceptors.dart';
import 'package:climate/features/shared/models/weather_api.dart';
part 'weather_api.chopper.dart';

const String apiUrl = 'http://api.weatherapi.com/v1';

@ChopperApi()
abstract class WeatherApiService extends ChopperService {
  @Get(path: 'forecast.json')
  Future<Response<AfterConvert>> getForecastWeather({
    // could be lat,long or url or just a name
    @Query('q') required String commaSeparatedLatLon,
    @Query('days') int days = 2,
    @Query('aqi') String aqi = 'no',
    @Query('alerts') String alerts = 'no',
  });
  @Get(path: 'search.json')
  Future<Response<List<PossibleLocation>>> locationSearchResults({
    // could be lat,long or url or just a name
    @Query('q') required String searchName,
  });

  static WeatherApiService create() {
    final client = ChopperClient(
      baseUrl: apiUrl,
      interceptors: [HttpLoggingInterceptor(), DataInterceptor()],
      errorConverter: const JsonConverter(),
      converter: WeatherConverter(),
      services: [
        _$WeatherApiService(),
      ],
    );
    return _$WeatherApiService(client);
  }
}
