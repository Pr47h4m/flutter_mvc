import 'package:flutter/material.dart';

class AppTheme {
  /// TextStyle According To [https://Material.io]
  static const TextStyle headline1 = const TextStyle(
        fontSize: 96,
        letterSpacing: -1.5,
        fontWeight: FontWeight.w300,
      ),
      headline2 = const TextStyle(
        fontSize: 60,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w300,
      ),
      headline3 = const TextStyle(
        fontSize: 48,
      ),
      headline4 = const TextStyle(
        fontSize: 34,
        letterSpacing: 0.25,
      ),
      headline5 = const TextStyle(
        fontSize: 24,
      ),
      headline6 = const TextStyle(
        fontSize: 20,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w500,
      ),
      bodyText1 = const TextStyle(
        fontSize: 16,
        letterSpacing: 0.5,
      ),
      bodyText2 = const TextStyle(
        fontSize: 14,
        letterSpacing: 0.25,
      ),
      subtitle1 = const TextStyle(
        fontSize: 16,
        letterSpacing: 0.15,
      ),
      subtitle2 = const TextStyle(
        fontSize: 14,
        letterSpacing: 0.1,
        fontWeight: FontWeight.w500,
      ),
      caption = const TextStyle(
        fontSize: 12,
        letterSpacing: 0.4,
      ),
      overline = const TextStyle(
        fontSize: 10,
        letterSpacing: 1.5,
      ),
      button = TextStyle(
        fontSize: 14,
        color: Colors.white,
        letterSpacing: 1.25,
        fontWeight: FontWeight.w500,
      );

  static const lightTextColor = Color.fromRGBO(31, 31, 31, 1);
  static const darkTextColor = Color.fromRGBO(225, 225, 225, 1);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    errorColor: const Color(0xffb00020),
    scaffoldBackgroundColor: Color.fromRGBO(248, 249, 250, 1),
    appBarTheme: AppBarTheme(
      color: const Color(0xff6200ee),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      brightness: Brightness.light,
    ),
    colorScheme: ColorScheme.light(
      primary: const Color(0xff6200ee),
      secondary: const Color(0xff6200ee),
      onSurface: const Color.fromRGBO(248, 249, 250, 1),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: const Color.fromRGBO(31, 31, 31, 0.9),
      elevation: 2,
      contentTextStyle: bodyText1.copyWith(color: darkTextColor),
      behavior: SnackBarBehavior.floating,
      actionTextColor: const Color(0xff6200ee),
    ),
    cardTheme: CardTheme(
      color: const Color(0xffffffff),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    indicatorColor: const Color(0xff6200ee),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: const Color(0xff6200ee),
        ),
      ),
      labelStyle: TextStyle(
        color: lightTextColor,
      ),
    ),
    textTheme: TextTheme(
      headline1: headline1.copyWith(color: lightTextColor),
      headline2: headline2.copyWith(color: lightTextColor),
      headline3: headline3.copyWith(color: lightTextColor),
      headline4: headline4.copyWith(color: lightTextColor),
      headline5: headline5.copyWith(color: lightTextColor),
      headline6: headline6.copyWith(color: lightTextColor),
      bodyText1: bodyText1.copyWith(color: lightTextColor),
      bodyText2: bodyText2.copyWith(color: lightTextColor),
      subtitle1: subtitle1.copyWith(color: lightTextColor),
      subtitle2: subtitle2.copyWith(color: lightTextColor),
      caption: caption.copyWith(color: lightTextColor),
      overline: overline.copyWith(color: lightTextColor),
      button: button,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    errorColor: const Color(0xffcf6679),
    scaffoldBackgroundColor: const Color(0xff121212),
    appBarTheme: AppBarTheme(
      color: const Color.fromRGBO(31, 31, 31, 1),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      brightness: Brightness.dark,
    ),
    colorScheme: ColorScheme.dark(
      primary: const Color(0xffbb86fc),
      secondary: const Color(0xffbb86fc),
      onSurface: const Color.fromRGBO(31, 31, 31, 1),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: const Color.fromRGBO(31, 31, 31, 0.9),
      elevation: 2,
      contentTextStyle: bodyText1.copyWith(color: darkTextColor),
      behavior: SnackBarBehavior.floating,
      actionTextColor: const Color(0xffbb86fc),
    ),
    cardTheme: CardTheme(
      color: const Color.fromRGBO(31, 31, 31, 1),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    indicatorColor: const Color(0xffbb86fc),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color.fromRGBO(31, 31, 31, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: darkTextColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: const Color(0xffbb86fc),
        ),
      ),
      labelStyle: TextStyle(
        color: darkTextColor,
      ),
    ),
    textTheme: TextTheme(
      headline1: headline1.copyWith(color: darkTextColor),
      headline2: headline2.copyWith(color: darkTextColor),
      headline3: headline3.copyWith(color: darkTextColor),
      headline4: headline4.copyWith(color: darkTextColor),
      headline5: headline5.copyWith(color: darkTextColor),
      headline6: headline6.copyWith(color: darkTextColor),
      bodyText1: bodyText1.copyWith(color: darkTextColor),
      bodyText2: bodyText2.copyWith(color: darkTextColor),
      subtitle1: subtitle1.copyWith(color: darkTextColor),
      subtitle2: subtitle2.copyWith(color: darkTextColor),
      caption: caption.copyWith(color: darkTextColor),
      overline: overline.copyWith(color: darkTextColor),
      button: button,
    ),
  );
}
