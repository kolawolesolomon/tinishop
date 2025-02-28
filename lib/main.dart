import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:tinishop/screens/bnb.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      themeMode: ThemeMode.system,
      //BnbWidget means "BottomNavigationBarWidget"
      home: BnbWidget(),
    );
  }
}