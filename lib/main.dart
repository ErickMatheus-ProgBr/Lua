// lib/main.dart

import 'package:applua/app/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Lua',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcome, // Define qual é a primeira tela do aplicativo ao ser aberto
      routes: AppRoutes.routes, // Nosso catálogo com o mapeamento de todas as rotas do aplicativo
    );
  }
}
