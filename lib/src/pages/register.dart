import 'package:app_fluxolivrep/src/widgets/button.dart';
import 'package:app_fluxolivrep/src/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/blue.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage('assets/images/et.png')),
              ),
              const SizedBox(height: 30),
              InputWidget(icon: Icons.person, hint: 'Nome'),
              InputWidget(icon: Icons.email, hint: 'Email'),
              InputWidget(icon: Icons.description, hint: 'CPF'),
              InputWidget(
                icon: Icons.lock_outline,
                hint: 'Senha',
                obscure: true,
              ),
              InputWidget(
                icon: Icons.lock_outline,
                hint: 'Confirmar senha',
                obscure: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    label: 'Cadastrar',
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    size: Size(200, 75),
                  ),
                  ButtonWidget(
                    label: 'Cancelar',
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    size: Size(200, 75),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
