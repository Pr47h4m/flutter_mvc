/// @author: [Pratham Jaiswal & Jhanvi Soni]
/// Build Path: [C:\Users\Pratham\Desktop\flutter\flutter_general\build\windows\runner\Release\flutter_general.exe]

import 'package:flutter/material.dart';
import './app_theme.dart';
import './views/screens/home.dart';
import './views/screens/page_not_found.dart';

void main() => runApp(FlutterGeneral());

// ignore: must_be_immutable
class FlutterGeneral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FLUTTER_MVC",
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
