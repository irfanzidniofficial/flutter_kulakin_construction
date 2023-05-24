import 'package:flutter_kulakin_construction/src/features/authentication/presentation/signin/sign_in_screen.dart';
import 'package:flutter_kulakin_construction/src/features/authentication/presentation/signup/sign_up_screen.dart';

import 'package:flutter/material.dart';

class AppRouter {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignInScreen());
      case "/sign-up":
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpScreen());

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignInScreen());
    }
  }
}
