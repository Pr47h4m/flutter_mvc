/// @author: [Pratham Jaiswal & Jhanvi Soni]
/// Build Path: [C:\Users\Pratham\Desktop\flutter\flutter_general\build\windows\runner\Release\flutter_general.exe]

import 'package:flutter/material.dart';
import 'package:flutter_mvc/app_theme.dart';
import 'package:flutter_mvc/views/screens/home.dart';
import 'package:flutter_mvc/views/screens/page_not_found.dart';

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
