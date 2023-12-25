import 'package:flutter/material.dart';
import 'package:rental_car_flutter/resources/home-page.dart';
import 'package:rental_car_flutter/resources/introduction-page.dart';
import 'package:rental_car_flutter/resources/login-page.dart';
import 'package:rental_car_flutter/resources/register-page.dart';

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
      initialRoute: '/introduction',
      routes: <String, WidgetBuilder>{
        '': (context) => const HomePage(),
        '/introduction': (context) => const IntroductionPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
      home: const SafeArea(
        child: Scaffold(
          body: HomePage(),
        ),
      )
    );
  }
}
