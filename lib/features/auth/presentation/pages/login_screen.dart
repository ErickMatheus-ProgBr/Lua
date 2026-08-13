import 'dart:io';

import 'package:applua/core/theme/theme_colors.dart';
import 'package:applua/core/utils/media_query.dart';
import 'package:applua/core/theme/theme_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
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

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 13),
                shape: RoundedRectangleBorder(
                  //
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(14)),
                ),
              ),
              onPressed: () {}, //

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //
                  Image.asset("assets/icons/google.png", width: context.width * 0.06),
                  SizedBox(width: 20),
                  Text(
                    "Continuar com Google",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(child: Divider(color: Colors.grey, thickness: 1)), //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  child: Text(
                    "ou",
                    style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey, thickness: 1)), //
                SizedBox(height: 20),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ThemeColors.primary,
                padding: EdgeInsets.symmetric(vertical: 13),
                shape: RoundedRectangleBorder(
                  //
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(14)),
                ),
              ),
              onPressed: () {}, //

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //
                  Text(
                    "Criar conta com E-mail",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Já tem uma conta?",
                  style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      color: ThemeColors.primary,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
