import 'package:applua/core/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:applua/core/theme/theme_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/logoApp.png"),
              Text(
                textAlign: TextAlign.center,
                "O maior aplicatico para encontrar seu pet perdido.",
                style: TextStyle(color: ThemeText.white, fontSize: 50),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 13),
                ),
                onPressed: () {},
                child: Text(
                  "Começar",
                  style: TextStyle(
                    color: ThemeColors.primary,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
