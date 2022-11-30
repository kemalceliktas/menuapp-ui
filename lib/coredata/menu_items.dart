import 'package:get/get_state_manager/get_state_manager.dart';

class CategoryData extends GetxController {
  static List<dynamic> category = [
    {
      "name": "Hamburger",
      "logo": "assets/icons/hamburger.png",
    },
    {
      "name": "Meat",
      "logo": "assets/icons/meat.png",
    },
    {
      "name": "Pizza",
      "logo": "assets/icons/pizza.png",
    },
    {
      "name": "Tea/Coffee",
      "logo": "assets/icons/tea.png",
    },
    {
      "name": "Vegan",
      "logo": "assets/icons/vegan.png",
    },
  ];

  static List<dynamic> menuItems = [
    {
      "name": "Rice Curry",
      "description":
          "Best Italian homemade food lorem lorem 12 ipsum five ipsum lorem best top trend",
      "calorie": "450",
      "price": "29",
      "time": "30",
      "weight": "150",
      "icons": [
        "assets/icons/natural.png"

      ],
      "image":"assets/menuimages/food1.png"
    },
    {
      "name": "Meat",
      "description":
          "Best Italian homemade food lorem lorem 12 ipsum five ipsum lorem best top trend",
      "calorie": "450",
      "price": "18",
      "time": "25",
      "weight": "200",
      "icons": [
        "assets/icons/natural.png",

      ],
      "image":"assets/menuimages/food2.png"
    },
    {
      "name": "Breakfast",
      "description":
          "Best Italian homemade food lorem lorem 12 ipsum five ipsum lorem best top trend",
      "calorie": "250",
      "price": "10",
      "time": "15",
      "weight": "110",
      "icons": [
        "assets/icons/natural.png","assets/icons/organic.png"

      ],
      "image":"assets/menuimages/food3.png"
    },

    
     {
      "name": "Steak",
      "description":
          "Best Italian homemade food lorem lorem 12 ipsum five ipsum lorem best top trend",
      "calorie": "450",
      "price": "19",
      "time": "25",
      "weight": "110",
      "icons": [
        "assets/icons/organic.png"

      ],
      "image":"assets/menuimages/food7.png"
    },
  ];
}
