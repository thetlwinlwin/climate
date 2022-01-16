import 'package:climate/utils/custom_error.dart';
import 'package:go_router/go_router.dart';

import 'package:climate/features/error/error_screen.dart';
import 'package:climate/managers/status_manager.dart';
import 'package:climate/navigation/routes.dart';

final goRouter = GoRouter(
  routes: [
    Routes.splash,
    Routes.home,
  ],
  urlPathStrategy: UrlPathStrategy.path,
  refreshListenable: statusManager,
  debugLogDiagnostics: true,
  errorPageBuilder: (context, state) {
    return ErrorScreen.page(
        errorText: state.error.toString(), key: state.pageKey);
  },
  redirect: (state) {
    final queryParams = Map<String, String>.from(state.queryParams);

    if (statusManager.isInitialized && state.subloc == Routes.splash.path) {
      // better check the value rather than the permit.
      if (statusManager.latLong!.isNotEmpty && statusManager.connectionStatus) {
        queryParams['lat'] = statusManager.latLong![0];
        queryParams['long'] = statusManager.latLong![1];

        return Uri(path: Routes.home.path, queryParameters: queryParams)
            .toString();
      } else if (!statusManager.locationPermit) {
        throw CustomException(
            'App is not allowed to access location. Go to the app setttings and enables gps.');
      } else if (!statusManager.connectionStatus) {
        throw CustomException(
            'access internt to get the weather of current location');
      }
    }
    return null;
  },
);
