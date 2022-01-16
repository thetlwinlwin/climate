import 'package:chopper/chopper.dart';
import 'package:climate/api/weather_api.dart';
import 'package:climate/features/shared/models/weather.dart';
import 'package:climate/features/shared/models/weather_api.dart';
import 'package:climate/managers/status_manager.dart';
import 'package:flutter/material.dart';

import 'package:climate/features/shared/widgets/degree_button.dart';
import 'package:climate/features/shared/widgets/forecast_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final String lat;
  final String long;
  static MaterialPage page(
      {LocalKey? key, required String lat, required String long}) {
    return MaterialPage(
        child: HomeScreen(
      key: key,
      lat: lat,
      long: long,
    ));
  }

  const HomeScreen({
    Key? key,
    required this.lat,
    required this.long,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<Response<AfterConvert>> future;
  bool isCelsius = false;

  void changeDegree() {
    setState(() {
      isCelsius = !isCelsius;
    });
  }

  @override
  void initState() {
    // if we adding this in the build state, when we use setState, it will retrigger again.
    future = Provider.of<WeatherApiService>(context, listen: false)
        .getForecastWeather(
            commaSeparatedLatLon: widget.lat + ',' + widget.long, days: 3);
    super.initState();
  }

  void searchHandler() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          degreeChangeBtn(),
          IconButton(
            onPressed: searchHandler,
            icon: const Icon(
              Icons.search,
              size: 25,
            ),
          ),
        ],
      ),
      body: FutureBuilder<Response<AfterConvert>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              // for network fetching error
              return const Center(
                child: Text(
                  'Unknown error has occured. Contact the developer thetlwinlwinytu.gmail.com',
                ),
              );
            }
            final Current? currentParam = snapshot.data!.body!.current;
            final ThisLocation? locationParam =
                snapshot.data!.body!.thisLocation;
            final List<Forecasting>? forecastParam =
                snapshot.data!.body!.forecast;

            return SafeArea(
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(currentParam!.getBackgroundImg),
                      ),
                    ),
                  ),
                  textContainer(
                    context: context,
                    description: currentParam.conditionText,
                    locationName: locationParam!.name,
                    tempC: currentParam.tempC,
                    tempF: currentParam.tempF,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Row(
                      children: forecastParam!.map((Forecasting e) {
                        return ForeCastCard(
                          isCelsius: isCelsius,
                          iconUrl: e.iconUrl,
                          maxTempC: e.maxTempC,
                          maxTempF: e.maxTempF,
                          minTempC: e.minTempC,
                          minTempF: e.minTempF,
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }

  Widget textContainer({
    required BuildContext context,
    required String locationName,
    required String description,
    required String tempC,
    required String tempF,
  }) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 3.5,
      width: size.width / 2.8,

      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      // height: size.height / 3.5,
      // width: size.width / 2.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            locationName,
            softWrap: true,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
          textChange(
            tempC: tempC,
            tempF: tempF,
          ),
          Text(
            description,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  AnimatedSwitcher degreeChangeBtn() {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      duration: const Duration(
        milliseconds: 300,
      ),
      child: DegreeButton(
        key: isCelsius ? const ValueKey(1) : const ValueKey(2),
        text: isCelsius ? 'C' : 'F',
        callback: changeDegree,
      ),
    );
  }

  AnimatedSwitcher textChange({
    required String tempC,
    required String tempF,
  }) {
    return AnimatedSwitcher(
      duration: const Duration(
        milliseconds: 1000,
      ),
      child: Text(
        isCelsius ? tempC : tempF,
        key: isCelsius ? const ValueKey('C') : const ValueKey('F'),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
