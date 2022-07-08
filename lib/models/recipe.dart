class Ingredinet {
  double quantity;
  String meausure;
  String name;

  Ingredinet(this.quantity, this.meausure, this.name);
}

class Recipe {
  String lable;
  String imageUrl;
  int servings;

  List<Ingredinet> ingredient;

  Recipe(this.lable, this.imageUrl, this.servings, this.ingredient);

  static List<Recipe> samples = [
    Recipe(
      'Kabab',
      'assets/Kabab.jpeg',
      5,
      [
        Ingredinet(4, 'Plates', 'Kabab'),
        Ingredinet(4, 'Plates', 'Breate'),
        Ingredinet(2, 'Plates', 'Salats')
      ],
    ),
    Recipe(
      'Chicken Balls',
      'assets/Chicken_balls.jpeg',
      6,
      [
        Ingredinet(4, 'Plates', 'Meatballs'),
        Ingredinet(2, 'Plates', 'Salats'),
        Ingredinet(2, 'Cups', 'Soses')
      ],
    ),
    Recipe(
      'Noddle',
      'assets/Noddle.jpeg',
      24,
      [
        Ingredinet(4, 'Plates', 'Noddles'),
        Ingredinet(4, 'Spoon', 'Sticts'),
        Ingredinet(2, 'Plates', 'Salats')
      ],
    ),
    Recipe(
      'Burgers',
      'assets/Burgers.jpeg',
      24,
      [
        Ingredinet(4, 'Plates', 'Burgers'),
        Ingredinet(4, 'Cups', 'Chiess'),
      ],
    ),
    Recipe(
      'Tomato Soup',
      'assets/Tomato_soup.jpeg',
      24,
      [
        Ingredinet(1, 'Cup', 'Tomato Soup'),
      ],
    ),
  ];
}
