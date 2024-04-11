import 'package:flutter/material.dart';

class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  int qty;
  List<Addon> availableAddons;

  Food(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.category,
      required this.qty,
      required this.availableAddons});
}

enum FoodCategory { Main, Drinks, Desserts }

class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
