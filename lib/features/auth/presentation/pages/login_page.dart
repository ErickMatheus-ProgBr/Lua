import 'package:applua/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ThemeColors.secundary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    "assets/images/imageLogin.png", //
                  ),
                ),
                Text("Que bom te ver de noovo!"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
