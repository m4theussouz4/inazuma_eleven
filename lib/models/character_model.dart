class Character {
  final String name,
      fullName,
      description,
      positions,
      image,
      teamImage,
      countryImage,
      mainPositionImage;

  Character({
    this.name = "",
    this.fullName = "",
    this.description = "",
    this.positions = "",
    this.image = "",
    this.teamImage = "",
    this.countryImage = "",
    this.mainPositionImage = "",
  });
}

class Team {
  final int id;
  final List<Character>? members;

  Team({
    this.id = 0,
    this.members,
  });
}

class Category {
  final String src;
  final int id;

  Category({
    this.id = 0,
    this.src = "",
  });
}
