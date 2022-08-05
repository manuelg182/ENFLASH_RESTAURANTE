import 'dart:convert';
import 'dart:io';
import 'package:flutter_application_1/models/Login_credentials.dart';
import 'package:http/http.dart' as http;

class Api_Login {
  Future<List<Login_credentials>> fetchCredentials() async {
    final response = await http.get(
      Uri.parse('https://enflashtest-110c.restdb.io/rest/info-empresas?'),
      //Buscar mejor manera de pasar las keys, mas seguras
      headers: {'x-apikey': '62eca7ec6851d057058c8929'},
    );

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      print(jsonResponse.toString());
      return jsonResponse
          .map((data) => Login_credentials.fromJson(data))
          .toList();
    } else {
      print('fail');
      throw Exception('Failed to load credentials');
    }
  }
}
