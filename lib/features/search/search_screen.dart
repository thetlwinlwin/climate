import 'package:chopper/chopper.dart';
import 'package:climate/api/weather_api.dart';
import 'package:climate/features/shared/models/weather_api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CitySearch extends SearchDelegate<String> {
  late String result;
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
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data![index].name),
                onTap: () {
                  result = snapshot.data![index].name;
                  close(context, result);
                },
              );
            },
          );
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
      print('here');
      return FutureBuilder<List<PossibleLocation>?>(
        future: _search(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].name),
                  onTap: () => query = snapshot.data![index].name,
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
        },
      );
    } else {
      return const Center(
        child: Text('Type city name or lat,lon'),
      );
    }
  }
}
