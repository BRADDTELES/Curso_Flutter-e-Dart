import 'package:flutter/material.dart';
import 'package:horas_v3/screens/register_screen.dart';
import 'package:horas_v3/services/auth_service.dart';
import 'package:horas_v3/screens/reset_password_modal.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column( // RenderFlex overflowed >CORREÇÃO> child: SingleChildScrollView(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      const FlutterLogo(size: 76),
                      const SizedBox(
                        height: 16,
                      ),
                      TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(hintText: 'E-mail'),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        obscureText: true,
                        controller: _senhaController,
                        decoration: const InputDecoration(hintText: 'Senha'),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(onPressed: () {
                        authService.entrarUsuario(
                            email: _emailController.text,
                            senha: _senhaController.text
                        ).then((String? erro) {
                          if (erro != null) {
                            final snackBar = SnackBar(
                              content: Text(erro),
                              backgroundColor: Colors.red);
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        });
                      }, child: const Text('Entrar')),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {

                        },
                        child: const Text('Entrar com google'),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),
                          ));
                        },
                        child: const Text('Ainda não tem uma conta, crie uma conta'),
                      ),
                      TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return PasswordresetModal();
                                });
                          },
                          child: Text('Esqueceu sua senha?'),
                      )
                    ],
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
