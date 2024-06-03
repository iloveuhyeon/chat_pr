import 'package:chat_pr/apis/fetchApi.dart';
import 'package:flutter/material.dart';

void main() {
  FetchApi().fetchApi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var api = FetchApi().fetchApi();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Text('$api')),
      ),
    );
  }
}
