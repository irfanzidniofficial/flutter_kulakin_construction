import 'package:flutter_kulakin_construction/src/features/accounts/presentation/account_screen.dart';
import 'package:flutter_kulakin_construction/src/features/authentication/presentation/signin/sign_in_screen.dart';
import 'package:flutter_kulakin_construction/src/features/authentication/presentation/signup/sign_up_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/features/cart/presentation/success_transaction/success_transation_screen.dart';
import 'package:flutter_kulakin_construction/src/features/cart/presentation/transaction/method_transaction_screen.dart';
import 'package:flutter_kulakin_construction/src/features/pos/presentation/pos_screen.dart';
import 'package:flutter_kulakin_construction/src/features/products/presentation/market_screen.dart';
import 'package:flutter_kulakin_construction/src/routing/main_navigation.dart';

class AppRouter {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignInScreen());
      case "/sign-up":
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignUpScreen(),
        );
      case "/main-navigation":
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainNavigation(),
        );
      case "/market":
        return MaterialPageRoute(
          builder: (BuildContext context) => const MarketScreen(),
        );
      case "/account":
        return MaterialPageRoute(
          builder: (BuildContext context) => const AccountScreen(),
        );
      case "/pos":
        return MaterialPageRoute(
          builder: (BuildContext context) => const PosScreen(),
        );
      case "/success-transaction":
        return MaterialPageRoute(
          builder: (BuildContext context) => const SuccessTransactionScreen(),
        );
      case "/method-transaction":
        return MaterialPageRoute(
          builder: (BuildContext context) => const MethodTransactionScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignInScreen(),
        );
    }
  }
}
