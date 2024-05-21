import 'package:flutter/material.dart';
import 'package:bank_app/src/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
      theme: ThemeData(useMaterial3: false),
    );
  }
}
