import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String errorText;
  const ErrorScreen({
    Key? key,
    required this.errorText,
  }) : super(key: key);

  static MaterialPage page({
    LocalKey? key,
    required String errorText,
  }) {
    return MaterialPage(
      child: ErrorScreen(
        key: key,
        errorText: errorText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('error'),
      ),
      body: Center(
        child: Text(errorText),
      ),
    );
  }
}
