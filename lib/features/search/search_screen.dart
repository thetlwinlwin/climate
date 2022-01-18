import 'package:chopper/chopper.dart';
import 'package:climate/api/weather_api.dart';
import 'package:climate/features/shared/models/weather_api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CitySearch extends SearchDelegate<String?> {
  late String? result;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        result = null;
        close(context, result);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<List<PossibleLocation>?>(
      future: _search(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final searchresults = snapshot.data;
          if (searchresults!.isNotEmpty) {
            return ListView.builder(
              itemCount: searchresults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchresults[index].name),
                  onTap: () {
                    final String lat = searchresults[index].lat.toString();
                    final String lon = searchresults[index].lon.toString();
                    result = lat + ',' + lon;
                    close(context, result);
                  },
                );
              },
            );
          } else {
            return const Center(
              child: Text('unfortunately there is no matching places.'),
            );
          }
        } else {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
      },
    );
  }

  Future<List<PossibleLocation>?> _search(BuildContext context) async {
    final result = await Provider.of<WeatherApiService>(context)
        .locationSearchResults(searchName: query);
    List<PossibleLocation>? possibleList = result.body;
    return possibleList;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      return const Center(
        child: Text('press enter/search to find'),
      );
    }
    return const Center(
      child: Text('Type city name or lat,lon'),
    );
  }
}
