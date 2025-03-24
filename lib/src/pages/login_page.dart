import 'package:app_fluxolivrep/src/widgets/button.dart';
import 'package:app_fluxolivrep/src/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
                width: 200,
                child: Image(image: AssetImage('assets/images/et.png')),
              ),
              const SizedBox(height: 30),
              InputWidget(icon: Icons.person_outline, hint: 'Usuário'),
              InputWidget(
                icon: Icons.lock_outline,
                hint: 'Password',
                obscure: true,
              ),
              const SizedBox(height: 30),
              ButtonWidget(
                label: 'Acessar',
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                size: Size(double.infinity, 60),
              ),
              const SizedBox(height: 15),
              ButtonWidget(
                label: 'Novo Usuario',
                onPressed: () {
                  Navigator.of(context).pushNamed('/register');
                },
                size: Size(double.infinity, 60),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
