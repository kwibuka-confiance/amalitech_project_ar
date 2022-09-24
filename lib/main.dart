import 'package:amalitech_project_ar/pages/home_screen.dart';
import 'package:amalitech_project_ar/pages/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amalitech Project AR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: "#42B546".toColor(),
          primarySwatch: Colors.green),
      routes: {
        '/': (context) => const SignupScreen(),
        Homescreen.routeName: (context) => const Homescreen()
      },
    );
  }
}
