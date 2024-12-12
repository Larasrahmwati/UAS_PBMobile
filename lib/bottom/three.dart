import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  const Three({super.key});

  @override
  _ThreeState createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  bool _isLoggedIn = true; // Simulasi status login

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Neighborhood'),
        backgroundColor: const Color.fromARGB(255, 83, 82, 81),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _isLoggedIn ? Icons.account_circle : Icons.account_box_outlined,
                size: 100,
                color: const Color.fromARGB(255, 34, 34, 33),
              ),
            
              const SizedBox(height: 20),
              Text(
                _isLoggedIn ? 'Hallo, Laras Rahmawati' : 'Belum Login',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              if (_isLoggedIn)
                Column(
                  children: [
                    CupertinoButton.filled(
                      child: const Text('Logout'),
                      onPressed: () {
                        setState(() {
                          _isLoggedIn = false; // Aksi logout
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    CupertinoButton(
                      child: const Text('Ganti Akun'),
                      onPressed: () {
                        // Aksi ganti akun
                      },
                    ),
                  ],
                )
              else
                CupertinoButton.filled(
                  child: const Text('Login'),
                  onPressed: () {
                    // Aksi login
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
