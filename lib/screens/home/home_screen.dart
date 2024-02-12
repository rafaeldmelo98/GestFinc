import 'package:flutter/material.dart';
import 'package:gestao_financeira/screens/authenticate/authenticate_screen.dart';
import 'package:gestao_financeira/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColorApp,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "GestFinc",
              style: TextStyle(fontSize: 72, fontFamily: "cursive",color: ColorsApp.secundaryColorApp),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AuthenticateScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: ColorsApp.buttonColorApp,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: const Text("Entrar",style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
