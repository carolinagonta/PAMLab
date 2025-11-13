import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class DataService {
  // Această funcție încarcă fișierul home.json din assets
  Future<Map<String, dynamic>> loadHome() async {
    // Citim fișierul ca text folosind rootBundle
    final txt = await rootBundle.loadString('assets/data/home.json');
    return jsonDecode(txt) as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> loadDetails(String courseId) async {
    final txt = await rootBundle.loadString('assets/data/details.json');
    // Transformare JSON -> Map, pentru a fi procesat de controller
    return jsonDecode(txt) as Map<String, dynamic>;
  }
}
