import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestão Financeira',
      theme: ThemeData(primaryColor: Colors.teal),
      home: Scaffold(
        body: Center(
            child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Olá, usuário.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            TextField(),
            ElevatedButton(
              onPressed: () {},
              child: Text('Entrar'),
            )
          ],
        )),
      ),
    );
  }
}
