import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme() => ThemeData(
  canvasColor: Colors.white,
  appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      actionsIconTheme: IconThemeData(color: Colors.black),
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20.0),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark)),
  textTheme: const TextTheme(
    headline1: TextStyle(color: Colors.black, fontSize: 16.0),
    bodyText1: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        overflow: TextOverflow.ellipsis),
    bodyText2: TextStyle(color: Colors.grey, fontSize: 14.0),
  ),
  primarySwatch: Colors.deepOrange,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey),
  inputDecorationTheme: const InputDecorationTheme(
      prefixIconColor: Colors.black,
      iconColor: Colors.black,
      hoverColor: Colors.black,
      focusColor: Colors.black,
      hintStyle: TextStyle(color: Colors.black),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 2.0),
      ),
      labelStyle: TextStyle(color: Colors.black),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 2.0),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 2.0),
      )),
);

ThemeData darkTheme() => ThemeData(
  canvasColor: HexColor('0f151f'),
  appBarTheme: AppBarTheme(
      color: HexColor('0f151f'),
      elevation: 0.0,
      actionsIconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: HexColor('0f151f'),
          statusBarIconBrightness: Brightness.light)),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        overflow: TextOverflow.ellipsis),
    bodyText2: TextStyle(color: Colors.grey, fontSize: 14.0),
    headline1: TextStyle(color: Colors.grey, fontSize: 14.0),
  ),
  primarySwatch: Colors.deepOrange,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey),
  inputDecorationTheme: const InputDecorationTheme(
      prefixIconColor: Colors.white,
      iconColor: Colors.white,
      hoverColor: Colors.white,
      focusColor: Colors.white,
      hintStyle: TextStyle(color: Colors.white),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      labelStyle: TextStyle(color: Colors.white),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      )),
);