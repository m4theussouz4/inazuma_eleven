import 'package:flutter/material.dart';
import 'package:inazuma_eleven/constants.dart';
import 'package:inazuma_eleven/models/character_model.dart';
import 'package:inazuma_eleven/pages/character/components/character_body.dart';

class CharacterPage extends StatelessWidget {
  final Character characterInfo;

  const CharacterPage({super.key, required this.characterInfo});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: backgroundColor,
        ),
        child: CharacterBody(size: size, characterInfo: characterInfo),
      ),
    );
  }
}
