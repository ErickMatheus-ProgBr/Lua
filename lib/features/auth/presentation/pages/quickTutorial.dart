import 'package:flutter/material.dart';

class Quicktutorial extends StatelessWidget {
  const Quicktutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Column(children: [Text("Como funciona")])),
    );
  }
}
