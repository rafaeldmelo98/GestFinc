import 'package:flutter/material.dart';
import 'package:gestao_financeira/screens/authenticate/inital_form_screen.dart';
import 'package:gestao_financeira/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 24, 70, 29)), 
      ),
      title: 'Gestão Financeira',
      home: InitialFormScreen(),
    );
  }
}
