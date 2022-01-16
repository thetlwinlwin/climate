import 'dart:math';

class Current {
  double temp;
  String conditionText;
  int conditionCode;
  int humidity;
  double feelsLike;

  Current({
    required this.temp,
    required this.conditionText,
    required this.conditionCode,
    required this.humidity,
    required this.feelsLike,
  });
  String get tempC => temp.toStringAsFixed(2) + ' \u00b0C';
  String get tempF => fConverter(temp);

  String get getBackgroundImg {
    int suffix = Random().nextInt(2);
    if (thunderstorm.contains(conditionCode)) {
      return 'assets/images/thunderstorm$suffix.jpg';
    }
    if (cloudy.contains(conditionCode)) {
      return 'assets/images/cloudy$suffix.jpg';
    }
    if (clear.contains(conditionCode)) {
      return 'assets/images/clear$suffix.jpg';
    }
    if (drizzle.contains(conditionCode)) {
      return 'assets/images/drizzle$suffix.jpg';
    }
    if (rain.contains(conditionCode)) {
      return 'assets/images/rain$suffix.jpg';
    }
    if (snow.contains(conditionCode)) {
      return 'assets/images/snow$suffix.jpg';
    } else {
      return 'assets/images/cloudy1.jpg';
    }
  }
}

class Forecasting {
  String iconUrl;
  String dayName;
  double maxTemp;
  double minTemp;

  int rainChancePercent;
  int snowChancePercent;

  int avgHumidity;
  Forecasting({
    required this.iconUrl,
    required this.dayName,
    required this.maxTemp,
    required this.minTemp,
    required this.rainChancePercent,
    required this.snowChancePercent,
    required this.avgHumidity,
  });

  String get maxTempC => maxTemp.toStringAsFixed(0) + ' \u00b0C';
  String get minTempC => minTemp.toStringAsFixed(0) + ' \u00b0C';
  String get maxTempF => fConverter(maxTemp, decimalPlace: 0);
  String get minTempF => fConverter(minTemp, decimalPlace: 0);
}

// according to the api docs.
const List<int> thunderstorm = [1087, 1273, 1276, 1279, 1282];
const List<int> cloudy = [1003, 1006, 1009, 1030, 1135];
const List<int> clear = [1000];
const List<int> drizzle = [1150, 1153, 1168, 1240];
const List<int> rain = [
  1063,
  1069,
  1180,
  1183,
  1186,
  1189,
  1192,
  1195,
  1198,
  1201,
  1243,
  1246,
  1249,
  1252
];
const List<int> snow = [
  1066,
  1114,
  1072,
  1117,
  1147,
  1171,
  1204,
  1207,
  1210,
  1213,
  1216,
  1219,
  1222,
  1225,
  1237,
  1255,
  1258,
  1261,
  1264
];

String fConverter(double value, {int decimalPlace = 1}) =>
    ((value * (9 / 5)) + 32).toStringAsFixed(decimalPlace) + ' \u00b0F';
