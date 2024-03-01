import 'package:flutter/material.dart';

const backgroundColor = Color.fromARGB(255, 32, 32, 32);
final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: TextTheme(
      bodyMedium: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
      labelSmall: TextStyle(
          color: Colors.white.withOpacity(0.6),
          fontWeight: FontWeight.w700,
          fontSize: 14)),
);
