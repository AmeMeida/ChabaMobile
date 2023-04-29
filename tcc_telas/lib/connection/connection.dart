import 'dart:convert';
import '../model/Cardapio.dart';
import 'package:http/http.dart' as http;

class Connection {
  static Future<List<Cardapio>> getCardapio(String data) async {
    var url = Uri.parse("http://192.168.15.7:3000/api/cardapio/${data}");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final cardapios = jsonDecode(response.body) as List;
      return cardapios.map((cardapio) => Cardapio.fromMap(cardapio)).toList();
    } else {
      throw Exception('Falha ao carregar cardápio');
    }
  }

  static Future<double> getSaldo2(String ra, String senha) async {
    var url = Uri.parse("http://192.168.15.7:3000/api/saldo");

    final response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(<String, String>{"ra": ra, "senha": senha}));

    var res = jsonDecode(response.body);
    return double.parse(res[0]["saldo"] ?? "");
  }

  static Future<double> getSaldo(String ra, String senha) async {
    var url = Uri.parse("http://192.168.15.7:3000/api/saldo/${ra}/${senha}");

    final response = await http.get(url, headers: <String, String>{
      "Content-Type": "application/json;charset=UTF-8"
    });

    var res = jsonDecode(response.body);

    return double.parse(res[0]["Saldo"] ?? "");
  }
}
