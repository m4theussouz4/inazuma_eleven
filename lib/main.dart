import 'package:flutter/material.dart';
import 'package:inazuma_eleven/constants.dart';
import 'package:inazuma_eleven/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inazuma Eleven',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
        fontFamily: 'Inter',
      ),
      home: const HomePage(),
    );
  }
}
