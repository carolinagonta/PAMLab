import 'dart:convert';
import 'package:http/http.dart' as http;

class DataService {
  // URL de bază al API-ului
  static const String _baseUrl = 'https://test-api-jlbn.onrender.com/v1';

  // Încarcă datele de pe pagina principală (feed)
  Future<Map<String, dynamic>> loadHome() async {
    final uri = Uri.parse('$_baseUrl/feed');     // construim URL-ul complet
    final response = await http.get(uri);        // cerere HTTP GET

    // verificăm dacă serverul a răspuns corect
    if (response.statusCode != 200) {
      throw Exception(
        'Eroare la încărcarea feed-ului: ${response.statusCode}',
      );
    }

    return jsonDecode(response.body) as Map<String, dynamic>; // convertim JSON → Map
  }

  // Încarcă detaliile unui curs
  Future<Map<String, dynamic>> loadDetails(String courseId) async {
    final uri = Uri.parse('$_baseUrl/feed/details?courseId=$courseId');
    final response = await http.get(uri);

    // verificăm răspunsul serverului
    if (response.statusCode != 200) {
      throw Exception(
        'Eroare la încărcarea detaliilor: ${response.statusCode}',
      );
    }

    return jsonDecode(response.body) as Map<String, dynamic>; // JSON → Map
  }
}
