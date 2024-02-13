import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gestao_financeira/utils/colors.dart';

class InitialFormScreen extends StatefulWidget {
  const InitialFormScreen({Key? key}) : super(key: key);

  @override
  State<InitialFormScreen> createState() => _InitialFormScreenState();
}

class _InitialFormScreenState extends State<InitialFormScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final TextEditingController hoursWorkController = TextEditingController();
  final TextEditingController daysWorkController = TextEditingController();
  bool showPassword = false;
  bool showIconHidePassword = false;
  IconData iconShowPassword = Icons.remove_red_eye_outlined;

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
                      color: ColorsApp.supportColorApp1,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          hintText: "Digite sua nova senha de acesso",
                          labelText: "Senha",
                          hintStyle: TextStyle(
                              color: ColorsApp.supportColotApp2, fontSize: 14),
                          labelStyle: TextStyle(
                            color: ColorsApp.supportColorApp1,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: showPassword,
                        maxLength: 6,
                        onTap: () {
                          setState(() {
                            showIconHidePassword = !showIconHidePassword;
                          });
                        },
                        onEditingComplete: () {
                          setState(() {
                            showIconHidePassword = false;
                          });
                        },
                      ),
                    ),
                    showIconHidePassword
                        ? IconButton(
                            onPressed: () {
                              bool show = !showPassword;
                              IconData icon;
                              if (show) {
                                icon = Icons.remove_red_eye_outlined;
                              } else {
                                icon = Icons.remove_red_eye_rounded;
                              }
                              setState(() {
                                showPassword = show;
                                iconShowPassword = icon;
                              });
                            },
                            icon: Icon(iconShowPassword))
                        : const SizedBox(
                            width: 0,
                            height: 0,
                          )
                  ],
                ),
                TextFormField(
                  controller: salaryController,
                  decoration: const InputDecoration(
                    hintText: "Informe sua renda mensal (R\$)",
                    labelText: "Renda mensal",
                    hintStyle: TextStyle(
                        color: ColorsApp.supportColotApp2, fontSize: 14),
                    labelStyle: TextStyle(
                      color: ColorsApp.supportColorApp1,
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    signed: false,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                    TextInputFormatter.withFunction((oldValue, newValue) {
                      final text = newValue.text;
                      return text.isEmpty
                          ? newValue
                          : double.tryParse(text) == null
                              ? oldValue
                              : newValue;
                    }),
                  ],
                ),
                TextFormField(
                  controller: hoursWorkController,
                  decoration: const InputDecoration(
                    hintText: "Quantas horas você trabalha por dia",
                    labelText: "Horas de trabalho diário",
                    hintStyle: TextStyle(
                        color: ColorsApp.supportColotApp2, fontSize: 14),
                    labelStyle: TextStyle(
                      color: ColorsApp.supportColorApp1,
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
                      color: ColorsApp.supportColorApp1,
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
