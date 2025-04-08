import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/Hotel%20Sample/Views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HotelHomePage(),
    );
  }
}
