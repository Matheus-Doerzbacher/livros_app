import 'package:flutter/material.dart';
import 'package:livros_app/layers/presentation/controllers/usuario_controller.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late UsuarioController controller;

  @override
  void initState() {
    super.initState();
    controller = GetIt.I.get<UsuarioController>();
  }

  void login() async {
    await controller.getUsuario();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Página de Login'),
            const Text('Faça login com o Google'),
            ElevatedButton(
              onPressed: login,
              child: const Text('Entrar'),
            ),
            Text('Bem-vindo, ${controller.usuario?.nome}'),
          ],
        ),
      ),
    );
  }
}
