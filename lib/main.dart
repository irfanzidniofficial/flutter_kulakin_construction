import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kulakin_construction/src/routing/app_router.dart';
import 'package:flutter_kulakin_construction/src/routing/bloc/main_nav/main_nav_cubit.dart';
import 'package:flutter_kulakin_construction/src/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => MainNavCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: greyColor,
            ),
            color: Colors.white,
            elevation: 0,
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          tabBarTheme: TabBarTheme(
            labelColor: orangeColor,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: orangeColor,
                width: 2,
              ),
            ),
            unselectedLabelColor: greyColor,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
            unselectedLabelStyle: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ),
        onGenerateRoute: router.onRoute,
      ),
    );
  }
}
