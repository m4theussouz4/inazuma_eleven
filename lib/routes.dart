import 'package:flutter/material.dart';
import 'package:inazuma_eleven/pages/home/home_page.dart';

class Routes {
  Routes._();

  static const String characterPage = '/characterPage', homePage = '/homePage';

  static final routes = <String, WidgetBuilder>{
    // characterPage: (context) => const CharacterPage(),
    homePage: (context) => const HomePage(),
  };
}
