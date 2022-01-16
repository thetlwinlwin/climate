import 'package:flutter/material.dart';

class DegreeButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const DegreeButton({
    Key? key,
    required this.text,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(0),
      color: Theme.of(context).colorScheme.primary,
      onPressed: callback,
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: const CircleBorder(),
    );
  }
}
