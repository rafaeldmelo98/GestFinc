import 'package:flutter/material.dart';
import 'package:gestao_financeira/utils/colors.dart';

class InitialFormScreen extends StatelessWidget {
  InitialFormScreen({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final TextEditingController hoursWorkController = TextEditingController();
  final TextEditingController daysWorkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.primaryColorApp,
        title: const Text(
          "Formulário",
          style: TextStyle(
            color: ColorsApp.secundaryColorApp,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.8,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: "Como quer ser chamado?",
                    labelText: "Nome",
                    hintStyle: TextStyle(
                        color: ColorsApp.supportColotApp2, fontSize: 14),
                    labelStyle: TextStyle(
                      color: ColorsApp.secundaryColorApp,
                    ),
                  ),
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    hintText: "Digite sua nova senha de acesso",
                    labelText: "Senha",
                    hintStyle: TextStyle(
                        color: ColorsApp.supportColotApp2, fontSize: 14),
                    labelStyle: TextStyle(
                      color: ColorsApp.secundaryColorApp,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
                TextFormField(
                  controller: salaryController,
                  decoration: const InputDecoration(
                    hintText: "Informe sua renda mensal (R\$)",
                    labelText: "Renda mensal",
                    hintStyle: TextStyle(
                        color: ColorsApp.supportColotApp2, fontSize: 14),
                    labelStyle: TextStyle(
                      color: ColorsApp.secundaryColorApp,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  controller: hoursWorkController,
                  decoration: const InputDecoration(
                    hintText: "Quantas horas você trabalha por dia",
                    labelText: "Horas de trabalho diário",
                    hintStyle: TextStyle(
                        color: ColorsApp.supportColotApp2, fontSize: 14),
                    labelStyle: TextStyle(
                      color: ColorsApp.secundaryColorApp,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  controller: daysWorkController,
                  decoration: const InputDecoration(
                    hintText: "Quantos dias você trabalha semanalmente",
                    labelText: "Dias de trabalho semanal",
                    hintStyle: TextStyle(
                        color: ColorsApp.supportColotApp2, fontSize: 14),
                    labelStyle: TextStyle(
                      color: ColorsApp.secundaryColorApp,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Name: ' +
                        nameController.text +
                        ' Password: ' +
                        passwordController.text +
                        ' Salary: ' +
                        salaryController.text +
                        ' Hour: ' +
                        hoursWorkController.text +
                        ' Days: ' +
                        daysWorkController.text);
                  },
                  child: const Text("Registrar"),
                  style: ElevatedButton.styleFrom(
                    primary: ColorsApp.buttonColorApp,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
