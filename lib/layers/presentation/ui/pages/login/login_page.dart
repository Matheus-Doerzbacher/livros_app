import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Pagina de Login'),
            const Text('Faça login com o Google'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
