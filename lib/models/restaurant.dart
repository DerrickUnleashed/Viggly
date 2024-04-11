import 'food.dart';

class Restaurant {
  static List<Food> getlist() {
    return [
      //all items
      Food(
          name: "Shawarma",
          description: "",
          imagePath: "lib/images/sw.jpeg",
          price: 90.00,
          category: FoodCategory.Main,
          availableAddons: [Addon(name: "Extra Sauce", price: 0.00)],
          qty: 0),
      Food(
          name: "Egg Fried Rice",
          description: "",
          imagePath: "lib/images/ef.webp",
          price: 130.00,
          category: FoodCategory.Main,
          availableAddons: [Addon(name: "Extra Sauce", price: 0.00)],
          qty: 0),
      Food(
          name: "Chicken Biriyani",
          description: "",
          imagePath: "lib/images/br.jpeg",
          price: 150.00,
          category: FoodCategory.Main,
          availableAddons: [Addon(name: "Extra Sauce", price: 0.00)],
          qty: 0),
      Food(
          name: "Chicken Wrap",
          description: "",
          imagePath: "lib/images/cw.webp",
          price: 100.00,
          category: FoodCategory.Main,
          availableAddons: [Addon(name: "Extra Sauce", price: 0.00)],
          qty: 0),
      Food(
          name: "White Pasta",
          description: "",
          imagePath: "lib/images/ws.webp",
          price: 120.00,
          category: FoodCategory.Main,
          availableAddons: [Addon(name: "Extra Sauce", price: 0.00)],
          qty: 0),
      Food(
          name: "Bhel Puri",
          description: "",
          imagePath: "lib/images/bp.jpeg",
          price: 50.00,
          category: FoodCategory.Main,
          availableAddons: [Addon(name: "Extra Sauce", price: 0.00)],
          qty: 0),
    ];
  }
}