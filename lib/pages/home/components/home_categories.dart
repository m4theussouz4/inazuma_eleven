import 'package:flutter/material.dart';
import 'package:inazuma_eleven/constants.dart';
import 'package:inazuma_eleven/mocks/character_mock.dart';

class Categories extends StatefulWidget {
  Function getTeamId;

  Categories({super.key, required this.getTeamId});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Padding(
        padding: const EdgeInsets.only(left: defaultPadding),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index),
        ),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Provider.of<AppModel>(context, listen: false).selectTeam(index);
          selectedIndex = index;
          widget.getTeamId(index);
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: defaultPadding,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: selectedIndex == index ? primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  categories[index].src,
                  height: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
