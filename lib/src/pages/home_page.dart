import 'package:app_fluxolivrep/src/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void incremented() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 10;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFull ? 'Acesso Bloqueado' : 'Acesso Liberado',
              style: TextStyle(
                color: isFull ? Colors.red : Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              count.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.w500,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  label: 'Sair',
                  onPressed: isEmpty ? null : decrement,
                ),
                const SizedBox(width: 40),
                ButtonWidget(
                  label: 'Entrar',
                  onPressed: isFull ? null : incremented,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
