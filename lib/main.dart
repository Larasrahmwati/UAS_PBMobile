import 'package:bottombartest/bottom/bottom_navi.dart';
import 'package:bottombartest/login/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:bottombartest/login/login.dart'; 
import 'package:bottombartest/login/register.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash', // Hanya menggunakan initialRoute
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/': (context) => const LoginPage(),
        '/home': (context) => const BottomNavi(), // BottomNavi sebagai home
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
