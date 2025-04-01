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
            image: AssetImage('assets/images/img_fundologin.png'),
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
              //InputLoginWidget(
              //icon: Icons.person_outline,
              //hint: 'Usuário',
              //obscure: false,
              //),
              //InputLoginWidget(
              //icon: Icons.lock_outline,
              //hint: 'Password',
              //obscure: true,
              //),
              const SizedBox(height: 30),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/novousuario');
                },
                child: const Text(
                  'Novo Usuário',
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
