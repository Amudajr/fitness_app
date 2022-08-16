import 'package:flutter/material.dart';
import 'package:fit/pages/login/login_page.dart';
import 'package:fit/pages/carousel/carousel.dart';
import 'package:fit/register/register_page.dart';

class FitnessPage {
  static const String initial = '/';
  static const String login = '/login';
  static const String register = '/register';
}

class FitnessRoute {
  static Route<dynamic> onRouteGenerate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case FitnessPage.initial:
        return MaterialPageRoute(
          builder: (context) => CarouselPage(),
        );
      case FitnessPage.login:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      case FitnessPage.register:
        return MaterialPageRoute(
          builder: (context) => RegisterPage(),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text(
                'Oops you lost your ways',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        );
    }
  }
}
