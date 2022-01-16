import 'package:climate/features/shared/widgets/cube_grid.dart';
import 'package:climate/managers/status_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static MaterialPage page({LocalKey? key}) {
    return MaterialPage(
      child: const SplashScreen(),
      key: key,
    );
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    statusManager.initializeApp();
    super.initState();
  }

// TODO: read_weather is here.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Cubes(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}




//  void readWeather() async {
//     String loadString = await rootBundle.loadString('assets/yangon.json');
//     WeatherFocusResult result =
//         WeatherFocusResult.fromJson(jsonDecode(loadString));
//     List<Forecasting> gg = convertApiWeahter(result)['forcast'];
//     print(gg[0].getBackgroundImg);
//   }