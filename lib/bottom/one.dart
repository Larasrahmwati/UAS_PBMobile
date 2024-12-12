import 'package:flutter/material.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'The Neighbourhood',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 213, 206, 220),
        elevation: 0,
      ),
      // Background gradient
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 122, 118, 122), Color.fromARGB(255, 50, 49, 51)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Selamat Berbelanja dan Jangan Lupa Sweater Weather!',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 18, 17, 18)
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                // Featured product image
                Image.network(
                  'data:image/jpeg;base64,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',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                // Featured section
                const Text(
                  'Featured Products',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 12, 12, 12),
                  ),
                ),
                const SizedBox(height: 10),
                // Product card with custom design
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6CV1QzKpOsno-pFkyeXKIUptHPwZgvHuojg&s',
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Outfit Cowok Starboy',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '\$199',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 75, 75, 76),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEQpdbvJb7rmO3mu7gGcUJr2klJX2sxOssZbATVX7Vthbd10mxzbv9bwBL0FnQmlDTl-Q&usqp=CAU',
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Outfit Cowok Sigma',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '\$199',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 76, 76, 77),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Button with custom style
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 222, 218, 232), // background color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Shop Now',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
