/// @author: [Pratham Jaiswal & Jhanvi Soni]

import 'package:flutter/material.dart';
import './app_theme.dart';
import './views/screens/home.dart';
import './constants/constants.dart';
import './views/screens/page_not_found.dart';

void main() => runApp(FlutterGeneral());

// ignore: must_be_immutable
class FlutterGeneral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.title,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
      onUnknownRoute: (settings) {
        print(settings.name);
        return MaterialPageRoute(builder: (_) => PageNotFound());
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
