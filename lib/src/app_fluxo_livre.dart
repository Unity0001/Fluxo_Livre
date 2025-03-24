import 'package:app_fluxolivrep/src/pages/home_page.dart';
import 'package:app_fluxolivrep/src/pages/login_page.dart';
import 'package:app_fluxolivrep/src/pages/register.dart';
import 'package:flutter/material.dart';

class AppFluxolivre extends StatelessWidget {
  const AppFluxolivre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppFluxoLivre',
      routes: {
        '/' : (_) => LoginPage(),
        '/home' : (_) => HomePage(),
        '/register' : (_) => RegisterPage(),
      },
    );
  }
}
