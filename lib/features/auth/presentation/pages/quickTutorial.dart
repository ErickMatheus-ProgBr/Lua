import 'package:applua/core/theme/theme_colors.dart';
import 'package:applua/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class Quicktutorial extends StatelessWidget {
  const Quicktutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: context.height * 0.04,
              horizontal: context.width * 0.06,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Como funciona", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFF8763CF), //
                  ),
                  title: const Text("Encontre", style: TextStyle(fontSize: 21)),
                  subtitle: Text("Veja pets perdidos na sua região"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFF8763CF), //
                  ),
                  title: const Text(
                    "Anuncie",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text("Publique um pet que você encontrou ou perdeu"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFF8763CF), //
                  ),
                  title: const Text(
                    "Compartilhe",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text("Ajude a espalhar para reunir familias."),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeColors.primary, //
                    maximumSize: Size(double.infinity, 50),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Entendi!",
                    style: TextStyle(color: ThemeColors.secundary, fontSize: 18),
                  ),
                ),
                SizedBox(height: 15),
                TextButton(
                  onPressed: () {},
                  child: Text("Pular", style: TextStyle(color: ThemeColors.primary, fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
