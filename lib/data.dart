import 'model/recipe.dart';
import 'model/cookbook.dart';

const Cookbook_Data = const [
  Cookbook(
    id: 'c1',
    cookbookName: 'Default cookbook',
    imageURLCookbook:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
  ),
];

const Recipes_Data = const [
  Recipe(
    id: 'r1',
    recipeName: 'Pancakes',
    category: 'c1',
    imageURL:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
    ],
    duration: 30,
  ),
  Recipe(
    id: 'r2',
    recipeName: 'Orange Mousse',
    category: 'c1',
    imageURL:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
    ],
    duration: 30,
  ),
];
