import 'package:flutter/material.dart';
import 'package:marking_web/config/theme/app_theme.dart';
import 'package:marking_web/presentation/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(), 
      title: 'Marking Web',
      home: const HomeScreen(),
    );
  }
}

 