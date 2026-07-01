import 'package:flutter/material.dart';

// ======================================================
// PALETA BASE - Logística Entregador
// ======================================================

class AppColors {
  AppColors._();

  // Cores principais
  static const Color deliveryBlue = Color(0xFF1565C0);
  static const Color deliveryDarkBlue = Color(0xFF0D2B45);
  static const Color deliverySkyBlue = Color(0xFFB9DFFF);

  static const Color deliveryGreen = Color(0xFF2E7D32);
  static const Color deliveryOrange = Color(0xFFF57C00);
  static const Color deliveryRed = Color(0xFFC62828);

  static const Color deliveryNeutral = Color(0xFF7A869A);
  static const Color deliveryDarkNeutral = Color(0xFF263238);

  // ======================================================
  // TEMA CLARO
  // ======================================================

  static const Color lightBackground = Color(0xFFF5F7FA);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFE8EEF5);

  static const Color lightPrimary = deliveryBlue;
  static const Color lightOnPrimary = Color(0xFFFFFFFF);

  static const Color lightPrimaryContainer = Color(0xFFD6EAFD);
  static const Color lightOnPrimaryContainer = Color(0xFF06243A);

  static const Color lightSecondary = deliveryDarkBlue;
  static const Color lightOnSecondary = Color(0xFFFFFFFF);

  static const Color lightSecondaryContainer = Color(0xFFDCEAF5);
  static const Color lightOnSecondaryContainer = Color(0xFF0D2B45);

  static const Color lightTertiary = deliveryOrange;
  static const Color lightOnTertiary = Color(0xFFFFFFFF);

  static const Color lightTertiaryContainer = Color(0xFFFFE0B2);
  static const Color lightOnTertiaryContainer = Color(0xFF4A2500);

  static const Color lightOnBackground = deliveryDarkNeutral;
  static const Color lightOnSurface = deliveryDarkNeutral;
  static const Color lightOnSurfaceVariant = Color(0xFF4D5A66);

  static const Color lightOutline = Color(0xFF8A99A8);
  static const Color lightOutlineVariant = Color(0xFFC9D3DD);

  // ======================================================
  // TEMA ESCURO
  // ======================================================

  static const Color darkBackground = Color(0xFF0B1117);
  static const Color darkSurface = Color(0xFF121A23);
  static const Color darkSurfaceVariant = Color(0xFF243241);

  static const Color darkPrimary = Color(0xFF90CAF9);
  static const Color darkOnPrimary = Color(0xFF06243A);

  static const Color darkPrimaryContainer = deliveryBlue;
  static const Color darkOnPrimaryContainer = Color(0xFFFFFFFF);

  static const Color darkSecondary = Color(0xFFB0CFE8);
  static const Color darkOnSecondary = Color(0xFF102A3D);

  static const Color darkSecondaryContainer = Color(0xFF1E425D);
  static const Color darkOnSecondaryContainer = Color(0xFFE3F2FD);

  static const Color darkTertiary = Color(0xFFFFB74D);
  static const Color darkOnTertiary = Color(0xFF3D2200);

  static const Color darkTertiaryContainer = deliveryOrange;
  static const Color darkOnTertiaryContainer = Color(0xFFFFFFFF);

  static const Color darkOnBackground = Color(0xFFE8EEF5);
  static const Color darkOnSurface = Color(0xFFE8EEF5);
  static const Color darkOnSurfaceVariant = Color(0xFFC4D0DC);

  static const Color darkOutline = Color(0xFF9AA8B5);
  static const Color darkOutlineVariant = Color(0xFF3D4B59);

  // ======================================================
  // CORES SEMÂNTICAS DO APP
  // ======================================================

  // Entregas
  static const Color statusPendente = deliveryOrange;
  static const Color onStatusPendente = Color(0xFFFFFFFF);

  static const Color statusEmRota = deliveryBlue;
  static const Color onStatusEmRota = Color(0xFFFFFFFF);

  static const Color statusEntregue = deliveryGreen;
  static const Color onStatusEntregue = Color(0xFFFFFFFF);

  static const Color statusCancelado = deliveryRed;
  static const Color onStatusCancelado = Color(0xFFFFFFFF);

  // Comprovantes
  static const Color comprovanteComFoto = deliveryGreen;
  static const Color comprovanteSemFoto = deliveryOrange;

  static const Color comprovanteComAssinatura = deliveryBlue;
  static const Color comprovanteSemAssinatura = deliveryNeutral;

  // Ações
  static const Color success = deliveryGreen;
  static const Color warning = deliveryOrange;
  static const Color danger = deliveryRed;
  static const Color info = deliveryBlue;
  static const Color neutral = deliveryNeutral;
}