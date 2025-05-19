import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://localhost:5000';

  static Future<List<dynamic>> getQuestions() async {
    final response = await http.get(Uri.parse('$baseUrl/questions'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as List;
    } else {
      throw Exception('Failed to load questions');
    }
  }

  static Future<void> addQuestion(String title, String course, int year) async {
    final response = await http.post(
      Uri.parse('$baseUrl/questions'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'title': title,
        'course': course,
        'year': year,
      }),
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to add question');
    }
  }
}
