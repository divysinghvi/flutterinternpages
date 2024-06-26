import 'package:flutter/material.dart';
import 'package:flutterinternpages/pages/home_page.dart';
import 'package:flutterinternpages/pages/login_page.dart';
import 'package:flutterinternpages/pages/screen.dart';
import 'package:flutterinternpages/utilities/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:LoginPage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
