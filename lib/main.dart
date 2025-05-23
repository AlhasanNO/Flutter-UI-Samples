import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/shopping_sample/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingHomePage(),
    );
  }
}
