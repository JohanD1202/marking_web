import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.white,
  Colors.grey,
  Colors.black,
  Colors.black87,
  Colors.black45,
  Colors.teal,
  Colors.red,
  Colors.blue
];
  

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  });


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList [selectedColor]
  );
}