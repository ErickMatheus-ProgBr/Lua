import 'package:flutter/material.dart';

extension Responsive on BuildContext {
  // Atalho para largura e altura
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  // Atalhos uteis para porcentagem
  double widgetPercent(double percent) => width * percent;
  double heightPercent(double percent) => height * percent;
}
