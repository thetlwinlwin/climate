import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:climate/managers/status_manager.dart';
import 'package:climate/utils/custom_error.dart';

import '../secret.dart';

class DataInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    final params = Map<String, dynamic>.from(request.parameters);
    params['key'] = apiKey;
    return statusManager.connectionStatus
        ? request.copyWith(parameters: params)
        : throw CustomException('You are not connected');
  }
}
