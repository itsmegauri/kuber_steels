import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'pages/splash_screen.dart';
import 'pages/login_screen.dart';
import 'pages/forgot_password_screen.dart';
import 'pages/home_screen.dart'; // The Home Page after login

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/home': (context) => HomeScreen(), // HomePage shown after login
      },
    );
  }
}
