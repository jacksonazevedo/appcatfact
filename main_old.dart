import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchCatFact() async {
  // Exibe mensagem de loading enquanto aguarda a requisição
  print('Loading...');

  try {
    final URI = "https://catfact.ninja/fact";
    // Realiza a requisição para a API de Cat Facts
    final response = await http.get(Uri.parse(URI));

    // Verifica se a requisição foi bem-sucedida
    if (response.statusCode == 200) {
      // Converte o JSON retornado em um Map
      final data = jsonDecode(response.body);
      final fact = data['fact'];
      // Exibe a informação retornada
      print('Cat Fact: $fact');
    } else {
      // Caso a API retorne um status diferente de 200, exibe o código do erro
      print('Erro: Código de status ${response.statusCode}');
    }
  } catch (e) {
    // Trata possíveis erros, como falta de conexão ou problemas na conversão do JSON
    print('Erro ao fazer a requisição: $e');
  }
}

void main() {
  fetchCatFact();
}
