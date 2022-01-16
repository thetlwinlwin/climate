import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:climate/features/shared/models/weather_api.dart';

class WeatherConverter implements Converter {
  @override
  FutureOr<Request> convertRequest(Request request) {
    final req = applyHeader(request, contentTypeKey, jsonHeaders);
    return encodeJson(req);
  }

  Request encodeJson(Request request) {
    final contentType = request.headers[contentTypeKey];
    if (contentType != null && contentType.contains(jsonHeaders)) {
      return request.copyWith(body: json.encode(request.body));
    }
    return request;
  }

  Response<BodyType> decodeJson<BodyType, InnerType>(Response response) {
    final contentType = response.headers[contentTypeKey];
    var body = response.body;
    if (contentType != null && contentType.contains(jsonHeaders)) {
      body = utf8.decode(response.bodyBytes);
    }
    try {
      final mapData = json.decode(body);
      final forcastQuery = convertApiWeahter(
        WeatherFocusResult.fromJson(mapData),
      );
      return response.copyWith<BodyType>(body: forcastQuery as BodyType);
    } catch (e) {
      chopperLogger.warning(e);
      return response.copyWith<BodyType>(bodyError: e.toString());
    }
  }

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(
      Response response) {
    return decodeJson<BodyType, InnerType>(response);
  }
}
