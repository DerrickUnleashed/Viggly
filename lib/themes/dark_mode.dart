import 'package:flutter/material.dart'
    show Color, ColorScheme, Colors, ThemeData;

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    background: Color.fromARGB(255, 194, 117, 117),
    primary: const Color.fromARGB(255, 148, 144, 144),
    secondary: const Color.fromARGB(255, 69, 59, 59),
    tertiary: const Color.fromARGB(255, 195, 188, 188),
    inversePrimary: Colors.grey.shade300,
  ),
);
