import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/routing/app_router.dart';
import 'package:flutter_kulakin_construction/src/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MaterialApp(
      title: 'Kulakin',
      theme: ThemeData(
        primaryColor: orangeColor,
        scaffoldBackgroundColor: whiteColor,
         elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: orangeColor,
              foregroundColor: whiteColor,
            ),
          ),
      ),
      onGenerateRoute: router.onRoute,
    );
  }
}
