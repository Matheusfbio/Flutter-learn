import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://jsonplaceholder.typicode.com/posts";

  Future<String> fetchData() async {
    try {
      final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print("SUCESSO => ${response.body}");
        return response.body;
      } else {
        print("FALHA => ${response.statusCode}");
        return "Erro ${response.statusCode}";
      }
    } catch (e) {
      print("ERRO DE CONEXÃO => $e");
      return "Erro de conexão: $e";
    }
  }

  Future<String> createData() async {
    var url = Uri.parse(baseUrl);
    var response = await http.post(
      url,
      body: {"title": "New Title", "body": "Hello world", "userId": "1"},
    );
    if (response.statusCode == 201) {
      return "Data created successfully : ${response.body}";
    } else {
      return "Failed to create data";
    }
  }

  Future<String> deleteData() async {
    var url = Uri.parse("$baseUrl/101");
    var response = await http.delete(url);
    if (response.statusCode == 200) {
      return "Data deleted successfully";
    } else {
      return "Failed to delete data";
    }
  }
}
