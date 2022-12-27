import 'package:flutter/material.dart';
import 'package:inazuma_eleven/constants.dart';
import 'package:inazuma_eleven/mocks/character_mock.dart';
import 'package:inazuma_eleven/pages/home/components/home_categories.dart';
import 'package:inazuma_eleven/pages/home/components/character_card.dart';

class HomeBody extends StatefulWidget {
  final Size size;

  const HomeBody({super.key, required this.size});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  ValueNotifier<int> updateTeamId = ValueNotifier(0);
  int teamId = 0;
  int cardsQtd = 0;

  changeTeamId(int value) {
    teamId = value;
    cardsQtd = teams[teamId].members!.length;
    updateTeamId.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding,
              vertical: 55,
            ),
            child: Center(
              child: Image.asset(
                "assets/images/inazuma_logo.png",
                width: widget.size.width * .75,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: defaultPadding, bottom: 20),
                child: Text(
                  "Teams",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                  ),
                ),
              ),
              Categories(getTeamId: (value) {
                changeTeamId(value);
              }),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: defaultPadding, top: 80),
                child: Text(
                  "Members",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: defaultPadding,
              left: defaultPadding,
              top: 5,
            ),
            child: ValueListenableBuilder<int>(
              valueListenable: updateTeamId,
              builder: ((context, value, _) {
                return SizedBox(
                  height: (353 *
                      ((teams[teamId].members!.length.floor().isEven
                              ? (teams[teamId].members!.length)
                              : teams[teamId].members!.length + 1) /
                          2)), // card = 323 + margin = 20 * n de cards / colunas
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.65,
                      mainAxisSpacing: defaultPadding,
                      crossAxisSpacing: defaultPadding,
                    ),
                    itemCount: teams[teamId].members!.length,
                    itemBuilder: (context, index) => CharacterCard(
                      character: teams[teamId].members![index],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
