import 'package:flutter/material.dart';
import 'package:solo_flutter_project/screens/auth/login.dart';
import 'package:solo_flutter_project/screens/auth/register.dart';
import 'package:solo_flutter_project/screens/auth/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
