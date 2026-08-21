import 'package:applua/core/theme/theme_text.dart';
import 'package:applua/core/utils/media_query.dart';
import 'package:applua/features/auth/presentation/pages/login_options.dart';
import 'package:flutter/material.dart';
import 'package:applua/core/theme/theme_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _imageShow = false;
  bool _showText = false;
  bool _showButton = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), () {
      if (!mounted) return;

      setState(() {
        _imageShow = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 700), () {
      if (!mounted) return;

      setState(() {
        _showText = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 900), () {
      if (!mounted) return;

      setState(() {
        _showButton = true;
      });
    });
  }

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
              AnimatedOpacity(
                opacity: _imageShow ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: Image.asset(
                  "assets/images/logoApp.png",
                  height: context.height * 0.24,
                  width: context.width * 0.9,
                ),
              ),
              AnimatedOpacity(
                opacity: _showText ? 1.0 : 0.0,
                duration: Duration(seconds: 2),
                child: Text(
                  textAlign: TextAlign.center,
                  "Conectando pessoas para reunir pets e famílias.",
                  style: TextStyle(color: ThemeText.white, fontSize: 35),
                ),
              ),

              AnimatedOpacity(
                opacity: _showButton ? 1.0 : 0.0,
                duration: const Duration(seconds: 4),
                child: SizedBox(
                  width: (context.width * 0.8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 13),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return const LoginOptions();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const start = Offset(1.0, 0.0);
                          const fim = Offset.zero;

                          final tween = Tween(begin: start, end: fim);

                          final offsetAnimation = animation.drive(tween);

                          return SlideTransition(position: offsetAnimation, child: child);
                        },
                        transitionDuration: const Duration(milliseconds: 900),
                      ),
                    ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
