import 'package:flutter/material.dart';
import 'package:flutter_application_1/api_calls/api_login.dart';
import 'package:flutter_application_1/models/Login_credentials.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Api_Login login = Api_Login();

  Future<List<Login_credentials>>? credentials;

  void initstate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    credentials = login.fetchCredentials();
    print(credentials.toString());
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const Center(child: Text("Prueba de API"))),
    );
  }
}
