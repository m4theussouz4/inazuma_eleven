import 'package:flutter/material.dart';
import 'package:inazuma_eleven/constants.dart';
import 'package:inazuma_eleven/models/character_model.dart';
import 'package:inazuma_eleven/pages/card/components/card_body.dart';

class CardPage extends StatelessWidget {
  final Character characterInfo;

  const CardPage({super.key, required this.characterInfo});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: backgroundColor,
        ),
        child: CardBody(size: size, characterInfo: characterInfo),
      ),
    );
  }
}
