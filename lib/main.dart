import 'package:chat_pr/apis/fetchApi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var apis;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchapi();
  }

  fetchapi() async {
    apis = (await FetchApi.fetchApi());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Text("${apis[1].title}"),
        ),
      ),
    );
  }
}
