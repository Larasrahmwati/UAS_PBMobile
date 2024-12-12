import 'package:bottombartest/login/login.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Arahkan ke halaman login setelah delay 5 detik
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          // Gambar Latar Belakang atau Warna
          Positioned.fill(
            child: Image.asset(
              'assets/splash-image.jpg.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Welcome to The Neighbourhood',
                      speed: const Duration(milliseconds: 150)),
                ],
                totalRepeatCount: 1, // Teks akan ditampilkan sekali
                pause: const Duration(milliseconds: 500),
                displayFullTextOnTap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
