import 'package:flutter/material.dart';
import 'package:patiflix/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    theme: ThemeData(
      colorScheme: ColorScheme.dark(
        primary: Colors.white,
        brightness: Brightness.dark,
      ),
      textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 20,
          color: Colors.white
        )
      ),
      iconTheme: IconThemeData(color: Colors.white),
      focusColor: Colors.white,
      indicatorColor: Colors.white,
    ),
  ),
  );
}

