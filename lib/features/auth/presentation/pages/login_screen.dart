import 'package:applua/core/theme/theme_colors.dart';
import 'package:applua/core/utils/media_query.dart';
import 'package:applua/core/theme/theme_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.secundary,
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: context.width * 0.1,
          vertical: context.height * 0.15,
        ),

        // width: context.width * 0.8,
        // height: context.height * 2, //
        child: Column(
          children: [
            Text(
              "Que bom ter você aqui!",
              style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            ), //
            Text(
              "Faça login para continuar",
              style: TextStyle(color: Colors.black, fontSize: 21.5, fontWeight: FontWeight.w500),
            ),

            Image.asset(
              "assets/images/petsAuth.png",
              height: context.height * 0.24,
              width: context.width * 0.9,
            ),
          ],
        ),
      ),
    );
  }
}
