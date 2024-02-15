import 'package:flutter/material.dart';

extension BuildContextEntension<T> on BuildContext {
  bool get isMobile => MediaQuery.of(this).size.width <= 500.0;

  bool get isTablet =>
      MediaQuery.of(this).size.width < 1024.0 &&
      MediaQuery.of(this).size.width >= 650.0;

  bool get isSmallTablet =>
      MediaQuery.of(this).size.width < 650.0 &&
      MediaQuery.of(this).size.width > 500.0;

  bool get isDesktop => MediaQuery.of(this).size.width >= 1024.0;

  bool get isSmall =>
      MediaQuery.of(this).size.width < 850.0 &&
      MediaQuery.of(this).size.width >= 560.0;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  Size get size => MediaQuery.of(this).size;

  // text styles

  TextStyle? get displayMedium => Theme.of(this).textTheme.displayMedium;

  TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;

  TextStyle? get headlineLarge =>
      Theme.of(this).textTheme.headlineLarge?.copyWith(color: this.primary);

  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;

  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;

  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;

  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;

  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;

  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;

  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;

  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;

  TextStyle? get titleTextStyle => Theme.of(this).appBarTheme.titleTextStyle;

  TextStyle? get bodyExtraSmall => bodySmall?.copyWith(
        fontSize: 10,
        // color: const Color(0xff017561),
        fontWeight: FontWeight.w600,
      );

  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;

  TextStyle? get dividerTextSmall => bodySmall?.copyWith(
        letterSpacing: 0.5,
        fontWeight: FontWeight.w700,
        fontSize: 12.0,
      );

  TextStyle? get dividerTextLarge => bodySmall?.copyWith(
        letterSpacing: 1.5,
        fontWeight: FontWeight.w700,
        fontSize: 13.0,
        height: 1.23,
      );

  // colors

  Color get primaryColor => Theme.of(this).primaryColor;

  Color get primaryColorDark => Theme.of(this).primaryColorDark;

  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  Color get primary => Theme.of(this).colorScheme.primary;

  Color get primaryContainer => Theme.of(this).colorScheme.primaryContainer;

  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;

  Color get onPrimaryContainer => Theme.of(this).colorScheme.onPrimaryContainer;

  Color get secondary => Theme.of(this).colorScheme.secondary;

  Color get onSecondary => Theme.of(this).colorScheme.onSecondary;

  Color get secondaryContainer => Theme.of(this).colorScheme.secondaryContainer;

  Color get onSecondaryContainer =>
      Theme.of(this).colorScheme.onSecondaryContainer;

  Color get tertiary => Theme.of(this).colorScheme.tertiary;

  Color get onTertiary => Theme.of(this).colorScheme.onTertiary;

  Color get tertiaryContainer => Theme.of(this).colorScheme.tertiaryContainer;

  Color get onTertiaryContainer =>
      Theme.of(this).colorScheme.onTertiaryContainer;

  Color get surface => Theme.of(this).colorScheme.surface;

  Color get cardColor => Theme.of(this).cardColor;

  Color get errorColor => Theme.of(this).colorScheme.error;

  Color get background => Theme.of(this).colorScheme.background;

  Color get unselectedTab => Colors.white.withOpacity(0.5);

  // String timestampToDate(int timestamp) {
  //   final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
  //   final dateFormat = DateFormat('HH:mm dd/MM/yyyy');
  //   return dateFormat.format(dateTime);
  // }

  // String messageDateCheck(int timestamp) {
  //   final date = DateTime.fromMillisecondsSinceEpoch(timestamp);

  //   final dateFormat = DateFormat('HH:mm dd/MM/yyyy');

  //   // DateTime date = dateFormat.format(dateTime);

  //   // Obtenir la date actuelle
  //   final now = DateTime.now();

  //   // Calculer la différence entre la date actuelle et la date passée
  //   final difference = now.difference(date);

  //   // Si la différence est inférieure à 24 heures
  //   if (difference.inHours < 24) {
  //     // Retourner l'heure
  //     return DateFormat("HH:mm").format(date);
  //   } else if (difference.inMinutes < 60) {
  //     // Retourner le nombre de minutes
  //     return "il y'a ${difference.inMinutes} min";
  //   } else if (difference.inHours < 48) {
  //     // Retourner "Hier"
  //     return "Hier";
  //   } else {
  //     // Retourner la date
  //     return dateFormat.format(date);
  //   }
  // }

}
