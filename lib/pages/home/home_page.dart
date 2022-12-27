import 'package:flutter/material.dart';
import 'package:inazuma_eleven/constants.dart';
import 'package:inazuma_eleven/pages/home/components/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: backgroundColor,
        ),
        child: HomeBody(size: size),
      ),
    );
  }
}
