import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({ Key? key }) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 100)),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'GestFinc',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text('Tenha controle da sua vida financeira!',
                  style: TextStyle(fontSize: 32.0),
                  textAlign: TextAlign.center),
            ),
            const Padding(
                padding: EdgeInsets.all(30.0),
                child:
                    Text('Vamos iniciar?', style: TextStyle(fontSize: 32.0))),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Iniciar'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFEB4B7C),
                  textStyle: const TextStyle(fontSize: 24.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}