import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/cat_fact.dart';

class CatFactRepository {
  final String _baseUrl = 'https://catfact.ninja/fact';

  Future<CatFact> fetchCatFact() async {
    final url = Uri.parse(_baseUrl);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return CatFact.fromJson(data);
    } else {
      throw Exception(
        'Falha ao carregar os dados (status: ${response.statusCode})',
      );
    }
  }
}
