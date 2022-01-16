import 'package:climate/features/home/home_screen.dart';
import 'package:climate/features/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final splash = GoRoute(
    path: '/',
    name: 'splash',
    pageBuilder: (context, state) {
      return SplashScreen.page(
        key: state.pageKey,
      );
    },
  );
  static final home = GoRoute(
    path: '/home',
    name: 'home',
    pageBuilder: (context, state) {
      return HomeScreen.page(
        lat: state.queryParams['lat']!,
        long: state.queryParams['long']!,
      );
    },
  );
}
