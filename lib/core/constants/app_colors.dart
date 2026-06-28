import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// Primary Colors
  static const Color primary = Color(0xFF00C897);
  static const Color primaryLight = Color(0xFF33D4AA);
  static const Color primaryDark = Color(0xFF00A87E);
  static const Color primarySoft = Color(0xFF36FAF5);
  static const Color primarySoftDark = Color(0xFF0D2E26);

  /// Accent / Secondary Colors
  static const Color accent = Color(0xFF7C3AED);
  static const Color accentLight = Color(0xFFEDE9FE);
  static const Color accentDark = Color(0xFF4C1D95);

  static const Color secondary = Color(0xFFF59E0B);
  static const Color secondaryLight = Color(0xFFFEF3C7);

  /// Semantics Colors
  static const Color success = Color(0xFF10B981);
  static const Color successLight = Color(0xFFD1FAE5);
  static const Color error = Color(0xFFEF4444);
  static const Color errorLight = Color(0xFFFEE2E2);
  static const Color warning = Color(0xFFF59E0B);
  static const Color warningLight = Color(0xFFFEF3C7);
  static const Color info = Color(0xFF3B82F6);
  static const Color infoLight = Color(0xFFDBEAFE);

  /// Answer Option Colors
  static const Color correctAnswer = Color(0xFF10B981);
  static const Color correctAnswerLight = Color(0xFFD1FAE5);
  static const Color wrongAnswer = Color(0xFFEF4444);
  static const Color wrongAnswerLight = Color(0xFFFEE2E2);
  static const Color selectedAnswer = Color(0xFF7C3AED);
  static const Color selectedAnswerLight = Color(0xFFEDE9FE);
  static const Color neturalAnswer = Color(0xFF6B7280);

  /// Light Theme
  static const Color lightBackground = Color(0xFFF8FFFE);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFF1FDF9);
  static const Color lightCardBG = Color(0xFFFFFFFF);
  static const Color lightDivider = Color(0xFFE5E7EB);
  static const Color lightShadow = Color(0x1A00C897);

  static const Color lightTextPrimary = Color(0xFF111827);
  static const Color lightTextSecondary = Color(0xFF6B7280);
  static const Color lightTextHint = Color(0xFF9CA3AF);

  /// Dark Theme
  static const Color darkBackground = Color(0xFF0A0F0D);
  static const Color darkSurface = Color(0xFF111916);
  static const Color darkSurfaceVariant = Color(0xFF1A2620);
  static const Color darkCardBG = Color(0xFF162019);
  static const Color darkDivider = Color(0xFF1F2D28);
  static const Color darkShadow = Color(0x2600C897);

  static const Color darkTextPrimary = Color(0xFFF9FAFB);
  static const Color darkTextSecondary = Color(0xFF9CA3AF);
  static const Color darkTextHint = Color(0xFF6B7280);

  /// Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF00C897), Color(0xFF00A87E)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient primaryGradientSoft = LinearGradient(
    colors: [Color(0xFFE6FAE5), Color(0xFFCCF5EA)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [Color(0xFF7C3AED), Color(0xFF9F67FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient warmGradient = LinearGradient(
    colors: [Color(0xFFF59E0B), Color(0xFFEF4444)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient darkCardGradient = LinearGradient(
    colors: [Color(0xFF162019), Color(0xFF1A2620)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient splashGradient = LinearGradient(
    colors: [Color(0xFF00C897), Color(0xFF00A87E), Color(0xFF007A5E)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// Categories Colors
  static const List<Color> categoriesColors = [
    Color(0xFF00C897), // Emerald
    Color(0xFF7C3AED), // Purple
    Color(0xFF3B82F6), // Blue
    Color(0xFFF59E0B), // Amber
    Color(0xFFEF4444), // Red
    Color(0xFF10B981), // Green
    Color(0xFFEC4899), // Pink
    Color(0xFF06B6D4), // Cyan
    Color(0xFF8B5CF6), // Violet
    Color(0xFF14B8A6), // Teal
  ];

  static const List<LinearGradient> categoriesGradient = [
    LinearGradient(colors: [Color(0xFF00C897), Color(0xFF00A87E)]),
    LinearGradient(colors: [Color(0xFF7C3AED), Color(0xFF9F67FF)]),
    LinearGradient(colors: [Color(0xFF3B82F6), Color(0xFF70A5FA)]),
    LinearGradient(colors: [Color(0xFFF59E0B), Color(0xFFFBBF24)]),
    LinearGradient(colors: [Color(0xFFEF4444), Color(0xFFF87171)]),
    LinearGradient(colors: [Color(0xFF10B981), Color(0xFF34D399)]),
    LinearGradient(colors: [Color(0xFFEC4899), Color(0xFFF472B6)]),
    LinearGradient(colors: [Color(0xFF06B6D4), Color(0xFF22D3EE)]),
    LinearGradient(colors: [Color(0xFF8B5CF6), Color(0xFFA78BFA)]),
    LinearGradient(colors: [Color(0xFF14B8A6), Color(0xFF2DD4BF)]),
  ];
}
