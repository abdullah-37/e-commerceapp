//  Here we will manage API Calls

import 'dart:convert';

import 'package:http/http.dart' as http;

class MyHttphelper {
  // Handle Response Method
  static Map<String, dynamic> responseHandler(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data : ${response.statusCode}');
    }
  }

  // Base Url
  static const String baseUrl = 'Example.com';

  // Method for GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
    return responseHandler(response);
  }

  // Method for POST request
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return responseHandler(response);
  }

  // MEthod for PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return responseHandler(response);
  }

  //Method for DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$baseUrl/$endpoint'));
    return responseHandler(response);
  }
}
