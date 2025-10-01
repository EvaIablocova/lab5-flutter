import 'package:flutter/material.dart';

/// Категории плотности (условные, для удобства)
enum Density { mdpi, hdpi, xhdpi }

class Responsive {
  /// Определяем плотность экрана по devicePixelRatio
  static Density densityOf(BuildContext context) {
    final dpr = MediaQuery.of(context).devicePixelRatio;
    if (dpr < 1.25) return Density.mdpi;     // ~1.0
    if (dpr < 1.75) return Density.hdpi;     // ~1.5
    return Density.xhdpi;                    // >=2.0
  }

  /// Масштаб относительно базовой ширины макета (например, 360dp)
  static double scale(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width / 360.0;
  }

  /// Удобный метод для масштабирования размеров
  static double scaled(BuildContext context, double value) {
    return value * scale(context);
  }

  /// Проверка: телефон или планшет
  static bool isTablet(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide >= 600;
  }
}
