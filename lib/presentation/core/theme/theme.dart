import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primaryColor: const Color(0xff057EE6),
  brightness: Brightness.light,
  // colorScheme: ColorScheme(
  //   primary: Colors.white,
  //   primaryVariant: Colors.black54,
  //   secondary: Colors.deepOrangeAccent,
  //   secondaryVariant: Colors.deepOrangeAccent[100],
  //   onSecondary: Colors.black,
  //   onPrimary: Colors.white,
  //   brightness: Brightness.light,
  //   onBackground: Colors.black,
  //   onError: Colors.black,
  //   error: Colors.white,
  //   surface: Colors.grey[200],
  //   onSurface: Colors.grey[300],
  //   background: Colors.white,
  // ),

  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  primaryIconTheme: const IconThemeData(
    color: Colors.black,
  ),

  appBarTheme: const AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.black87,
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: Colors.grey,
    labelPadding: const EdgeInsets.all(4),
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(0xffe3f2fd),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedItemColor: Colors.black45,
    selectedItemColor: Color(0xff42a5f5),
    selectedLabelStyle: TextStyle(
      color: Colors.blueAccent,
      fontSize: 13,
    ),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    unselectedLabelStyle: TextStyle(
      color: Colors.black38,
      fontSize: 10,
    ),
  ),
);
