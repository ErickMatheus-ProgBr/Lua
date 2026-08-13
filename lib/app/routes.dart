// lib/app/routes/app_routes.dart

import 'package:applua/features/auth/presentation/pages/home_screen.dart';
import 'package:applua/features/auth/presentation/pages/login_screen.dart';
import 'package:applua/features/auth/presentation/pages/welcome_screen.dart';
import 'package:flutter/material.dart';

/// Usamos 'abstract' para impedir que esta classe seja instanciada (var r = AppRoutes()).
/// Ela serve apenas como um container centralizador de rotas.
abstract class AppRoutes {
  // Usamos 'static' para acessar as variáveis diretamente sem criar objetos (Ex: AppRoutes.welcome)
  static const String initial = '/';
  static const String welcome = '/welcome';
  static const String home = '/home';
  static const String login = '/login';

  /// Mapeamento das rotas do app (Chave = Caminho em texto, Valor = Função que constrói a tela).
  /// O '(context) => Tela()' garante que a tela só seja carregada na memória no momento em que for aberta.
  static Map<String, WidgetBuilder> get routes => {
    welcome: (context) => const WelcomeScreen(),
    home: (context) => const HomeScreen(),
    login: (context) => const LoginScreen(),
  };
}
