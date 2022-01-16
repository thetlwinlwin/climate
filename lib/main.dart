import 'package:climate/api/weather_api.dart';
import 'package:climate/managers/status_manager.dart';
import 'package:climate/navigation/router.dart';
import 'package:climate/utils/themedata.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

void main() async {
  _setupLogging();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    print('${event.level.name}: ${event.time}');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => WeatherApiService.create(),
          dispose: (_, WeatherApiService service) => service.client.dispose(),
        ),
        ChangeNotifierProvider.value(value: statusManager),
      ],
      child: Consumer<StatusManager>(
        builder: (context, value, child) {
          return MaterialApp.router(
            routeInformationParser: goRouter.routeInformationParser,
            routerDelegate: goRouter.routerDelegate,
            theme: MyTheme.light(),
            darkTheme: MyTheme.dark(),
            themeMode: ThemeMode.system,
          );
        },
      ),
    );
  }
}
