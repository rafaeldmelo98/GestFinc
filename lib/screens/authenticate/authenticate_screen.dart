import 'package:flutter/material.dart';
import 'package:gestao_financeira/utils/colors.dart';

class AuthenticateScreen extends StatefulWidget {
  const AuthenticateScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticateScreen> createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsApp.primaryColorApp,
          foregroundColor: ColorsApp.secundaryColorApp,
          title: const Text(
            "Autenticação",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 191, 0),
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Olá, Rafael!",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    controller: passwordController,
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: const InputDecoration(
                      hintText: 'Digite sua senha de acesso',
                      labelText: 'Senha',
                      hintStyle: TextStyle(
                          color: ColorsApp.supportColotApp2, fontSize: 12),
                      labelStyle: TextStyle(
                        color: ColorsApp.supportColorApp1,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: (() => Navigator.of(context).pop()),
                  child: const Text("Entrar"),
                  style: ElevatedButton.styleFrom(
                    primary: ColorsApp.buttonColorApp,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                )
              ]),
        ));
  }
}
