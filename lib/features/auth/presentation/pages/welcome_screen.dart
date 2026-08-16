import 'package:applua/core/theme/theme_text.dart';
import 'package:applua/core/utils/media_query.dart';
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
              Image.asset(
                "assets/images/logoApp.png",
                height: context.height * 0.24,
                width: context.width * 0.9,
              ),
              Text(
                textAlign: TextAlign.center,
                "O maior aplicativo para encontrar seu pet perdido.",
                style: TextStyle(color: ThemeText.white, fontSize: 50),
              ),
              SizedBox(
                width: (context.width * 0.8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 13),
                  ),
                  onPressed: () => Navigator.pushNamed(context, "/loginOptions"),
                  child: Text(
                    "Começar",
                    style: TextStyle(
                      color: ThemeColors.primary,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
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
