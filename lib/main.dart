import 'package:flutter/material.dart';
// import 'package:test_finance/home_page.dart';
import 'package:test_finance/screens/auth_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),

      // HomePage(),
    );
  }
}
