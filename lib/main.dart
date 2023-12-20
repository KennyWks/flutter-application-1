import 'package:flutter/material.dart';
import 'package:flutter_application_1/CounterApp.dart';
import 'package:provider/provider.dart';
import 'RandomWordScreen.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => Counter(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selamat Datang',
      home: RandomWord(),
    );
  }
}
