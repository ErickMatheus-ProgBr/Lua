import 'package:applua/core/theme/theme_colors.dart';
import 'package:applua/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class Quicktutorial extends StatelessWidget {
  const Quicktutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.secundary,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: context.height * 0.04,
              horizontal: context.width * 0.06,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Como funciona", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                SizedBox(height: 34),
                _buildlistTile(),
                _buildNexts(),
                SizedBox(height: 34),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildlistTile() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      ListTile(
        leading: CircleAvatar(
          radius: 30,
          // ignore: sort_child_properties_last
          child: Stack(children: [Icon(Icons.location_on_outlined, size: 33, color: Colors.white)]),

          backgroundColor: Color(0xFF8763CF), //
        ),
        title: const Text("Encontre", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
        subtitle: Text("Veja pets perdidos na sua região", style: TextStyle(fontSize: 18)),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 30,

          backgroundColor: Color(0xFF8763CF),
          child: Stack(
            children: [Icon(Icons.add_a_photo_outlined, color: Colors.white, size: 33)],
          ), //
        ),
        title: const Text("Anuncie", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
        subtitle: Text(
          "Publique um pet que você encontrou ou perdeu",
          style: TextStyle(fontSize: 18),
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 30,

          backgroundColor: Color(0xFF8763CF), //
        ),
        title: const Text(
          "Compartilhe",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "Ajude a espalhar para reunir familias.",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    ],
  );
}

Widget _buildNexts() {
  return Column(
    children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColors.primary, //
          maximumSize: Size(double.infinity, 50),
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        onPressed: () {},
        child: Text("Entendi!", style: TextStyle(color: ThemeColors.secundary, fontSize: 18)),
      ),
      SizedBox(height: 15),
      TextButton(
        onPressed: () {},
        child: Align(
          alignment: AlignmentGeometry.center,
          child: Text("Pular", style: TextStyle(color: ThemeColors.primary, fontSize: 18)),
        ),
      ),
    ],
  );
}
