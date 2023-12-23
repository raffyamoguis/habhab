import 'package:flutter/material.dart';
import 'package:habhab/core/resources/app_colors.dart';
import 'package:habhab/core/resources/app_strings.dart';
import 'package:habhab/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
