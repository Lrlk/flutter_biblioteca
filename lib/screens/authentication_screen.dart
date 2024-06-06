import 'package:flutter/material.dart';
import 'package:flutter_biblioteca/_core/app_colors.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool signIn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.topPurpleGradient,
                  AppColors.bottomPurpleGradient
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        "assets/book-512.png",
                        height: 128,
                      ),
                      const Text(
                        "Khazad Dum's archives",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("E-mail:"),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Senha:"),
                        ),
                        obscureText: true,
                      ),
                      Visibility(
                        visible: !signIn,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Confirmação de senha:"),
                              ),
                              obscureText: true,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Apelido:"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text((signIn) ? "Entrar" : "Cadastrar"),
                      ),
                      const Divider(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            signIn = !signIn;
                          });
                        },
                        child: Text(
                          (signIn)
                              ? "Ainda não tem uma conta? Cadastre-se"
                              : "Já tem uma conta? Entre",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
