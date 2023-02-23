import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groww/styles/colors.dart';

class AppTheme {
  get darktheme => ThemeData(
        primarySwatch: Palette.kToDark,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        brightness: Brightness.dark,
        canvasColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          displayLarge: TextStyle(color: Colors.white),
          displayMedium: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white),
          headlineLarge: TextStyle(color: Colors.white),
          headlineMedium: TextStyle(color: Colors.white),
          headlineSmall: TextStyle(color: Colors.white),
          labelLarge: TextStyle(color: Colors.white),
          labelMedium: TextStyle(color: Colors.white),
          labelSmall: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Colors.white),
        ),

        /// BottomNavigationbar icon theme
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // backgroundColor: Colors.grey[350],
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          unselectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          selectedItemColor: Color.fromARGB(255, 127, 146, 251),
          unselectedItemColor: Colors.grey[350],
        ),
      );
  get lightTheme => ThemeData(
        primarySwatch: Palette.kToDark,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        brightness: Brightness.light,
        canvasColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // backgroundColor: Colors.grey[350],
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          unselectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          selectedItemColor: Color.fromARGB(255, 127, 146, 251),
          unselectedItemColor: Colors.grey[350],
        ),
      );
}
