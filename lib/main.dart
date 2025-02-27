import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlue,
        primaryColor: Colors.lightBlue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlue,
        ),
      ),
      home: InputPage(),
    );
  }
}
