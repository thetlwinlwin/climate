import 'package:flutter/material.dart';

class ForeCastCard extends StatelessWidget {
  final bool isCelsius;
  final String iconUrl;
  final String maxTempC;
  final String maxTempF;
  final String minTempC;
  final String minTempF;
  const ForeCastCard({
    Key? key,
    required this.isCelsius,
    required this.iconUrl,
    required this.maxTempC,
    required this.maxTempF,
    required this.minTempC,
    required this.minTempF,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: 100,
          child: Column(
            children: [
              const Text('Today'),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(iconUrl),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textChange(tempC: minTempC, tempF: minTempF),
                  textChange(tempC: maxTempC, tempF: maxTempF),
                ],
              ),
            ],
          ),
        ),
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
          fontSize: 14,
        ),
      ),
    );
  }
}
