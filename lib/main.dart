import 'package:flutter/material.dart';
import 'package:solo_flutter_project/screens/auth/forgotpassword.dart';
import 'package:solo_flutter_project/screens/auth/login.dart';
import 'package:solo_flutter_project/screens/auth/register.dart';
import 'package:solo_flutter_project/screens/auth/splashscreen.dart';
import 'package:solo_flutter_project/screens/home/dashboard.dart';

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
      initialRoute: "/splash",
      routes: {
        "/login": (BuildContext context) => LoginScreen(),
        "/splash": (BuildContext context) => SplashScreen(),
        "/register": (BuildContext context) => RegisterScreen(),
        "/forget-password": (BuildContext context) => ForgetPasswordScreen(),
        "/dashboard": (BuildContext context) => DashboardScreen(),
      },
    );
  }
}
