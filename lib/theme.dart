import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.pinkAccent,
    brightness: Brightness.light,
  ),
  dividerColor: Colors.black38,
  highlightColor: Colors.pinkAccent,
  sliderTheme: SliderThemeData(
    thumbColor: Colors.pinkAccent,
    activeTrackColor: Colors.black38,
    inactiveTrackColor: Colors.black38,
    trackHeight: 1,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.pinkAccent),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      side: WidgetStatePropertyAll(BorderSide(color: Colors.black38)),
      foregroundColor: WidgetStatePropertyAll(Colors.black),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
    ),
  ),
);

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.pinkAccent,
    brightness: Brightness.dark,
  ),
  dividerColor: Colors.white38,
  highlightColor: Colors.pinkAccent,
  sliderTheme: SliderThemeData(
    thumbColor: Colors.pinkAccent,
    activeTrackColor: Colors.white30,
    inactiveTrackColor: Colors.white30,
    trackHeight: 1,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.pinkAccent),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      side: WidgetStatePropertyAll(BorderSide(color: Colors.white30)),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
    ),
  ),
);
