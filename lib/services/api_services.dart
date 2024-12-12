import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://fashion-pria.test/api.php';

  // Fungsi Login
  Future<Map<String, dynamic>> login(String email, String password) async {
    final url = Uri.parse('$baseUrl?action=login');

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/x-www-form-urlencoded"}, // Menggunakan form-data
        body: {
          'email': email,
          'password': password,
        },
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}'); // Menambahkan log untuk mengecek respons

      if (response.statusCode == 200) {
        try {
          var responseData = jsonDecode(response.body);
          return responseData; // Mengembalikan data jika berhasil
        } catch (e) {
          return {'status': 'error', 'message': 'Failed to parse JSON response: $e'};
        }
      } else {
        // Jika status code bukan 200, berikan pesan error yang lebih jelas
        return {
          'status': 'error', 
          'message': 'Login failed. Status code: ${response.statusCode}, Response: ${response.body}'
        };
      }
    } catch (e) {
      // Menangani error jika ada masalah pada koneksi
      return {'status': 'error', 'message': 'Login failed. Error: $e'};
    }
  }

  // Fungsi Register
  Future<Map<String, dynamic>> register(String name, String email, String password) async {
    final url = Uri.parse('$baseUrl?action=register');

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/x-www-form-urlencoded"}, // Menggunakan form-data
        body: {
          'name': name,
          'email': email,
          'password': password,
        },
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}'); // Menambahkan log untuk mengecek respons

      if (response.statusCode == 200) {
        try {
          var responseData = jsonDecode(response.body);
          return responseData; // Mengembalikan data jika berhasil
        } catch (e) {
          return {'status': 'error', 'message': 'Failed to parse JSON response: $e'};
        }
      } else {
        // Jika status code bukan 200, berikan pesan error yang lebih jelas
        return {
          'status': 'error', 
          'message': 'Registration failed. Status code: ${response.statusCode}, Response: ${response.body}'
        };
      }
    } catch (e) {
      // Menangani error jika ada masalah pada koneksi
      return {'status': 'error', 'message': 'Registration failed. Error: $e'};
    }
  }
}
