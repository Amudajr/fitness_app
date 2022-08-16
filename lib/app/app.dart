import 'package:flutter/material.dart';
import 'package:fit/app/app_route.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        primaryColor: const Color(0xFF0175C2),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      initialRoute: FitnessPage.initial,
      onGenerateRoute: FitnessRoute.onRouteGenerate,
    );
  }
}
