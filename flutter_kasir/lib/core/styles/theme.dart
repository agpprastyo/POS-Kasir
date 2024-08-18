import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff153cbb),
      surfaceTint: Color(0xff3252cf),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4664e1),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff153cbb),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4664e1),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2743bc),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff526ae3),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Colors.white,
      onSurface: Color(0xff1c1b1b),
      onSurfaceVariant: Color(0xff444748),
      outline: Color(0xff747878),
      outlineVariant: Color(0xffc4c7c8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffb8c3ff),
      primaryFixed: Color(0xffdde1ff),
      onPrimaryFixed: Color(0xff001355),
      primaryFixedDim: Color(0xffb8c3ff),
      onPrimaryFixedVariant: Color(0xff0c37b7),
      secondaryFixed: Color(0xffdde1ff),
      onSecondaryFixed: Color(0xff001355),
      secondaryFixedDim: Color(0xffb8c3ff),
      onSecondaryFixedVariant: Color(0xff0c37b7),
      tertiaryFixed: Color(0xffdee1ff),
      onTertiaryFixed: Color(0xff001159),
      tertiaryFixedDim: Color(0xffbac3ff),
      onTertiaryFixedVariant: Color(0xff1a38b2),
      surfaceDim: Color(0xffddd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0132b3),
      surfaceTint: Color(0xff3252cf),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4664e1),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0132b3),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4664e1),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1333ae),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff526ae3),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Colors.white,
      onSurface: Color(0xff1c1b1b),
      onSurfaceVariant: Color(0xff404344),
      outline: Color(0xff5c6060),
      outlineVariant: Color(0xff787b7c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffb8c3ff),
      primaryFixed: Color(0xff4c6ae7),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2f50cd),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff4c6ae7),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2f50cd),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff526ae3),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3650c8),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff001865),
      surfaceTint: Color(0xff3252cf),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff0132b3),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff001865),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff0132b3),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff001669),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1333ae),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Colors.white,
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff212525),
      outline: Color(0xff404344),
      outlineVariant: Color(0xff404344),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffeaebff),
      primaryFixed: Color(0xff0132b3),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00217e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff0132b3),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff00217e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1333ae),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff001e83),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb8c3ff),
      surfaceTint: Color(0xffb8c3ff),
      onPrimary: Color(0xff002387),
      primaryContainer: Color(0xff284ac7),
      onPrimaryContainer: Color(0xfffefbff),
      secondary: Color(0xffb8c3ff),
      onSecondary: Color(0xff002387),
      secondaryContainer: Color(0xff284ac7),
      onSecondaryContainer: Color(0xfffefbff),
      tertiary: Color(0xffbac3ff),
      onTertiary: Color(0xff00218d),
      tertiaryContainer: Color(0xff526ae3),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141313),
      onSurface: Color(0xffe5e2e1),
      onSurfaceVariant: Color(0xffc4c7c8),
      outline: Color(0xff8e9192),
      outlineVariant: Color(0xff444748),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff3252cf),
      primaryFixed: Color(0xffdde1ff),
      onPrimaryFixed: Color(0xff001355),
      primaryFixedDim: Color(0xffb8c3ff),
      onPrimaryFixedVariant: Color(0xff0c37b7),
      secondaryFixed: Color(0xffdde1ff),
      onSecondaryFixed: Color(0xff001355),
      secondaryFixedDim: Color(0xffb8c3ff),
      onSecondaryFixedVariant: Color(0xff0c37b7),
      tertiaryFixed: Color(0xffdee1ff),
      onTertiaryFixed: Color(0xff001159),
      tertiaryFixedDim: Color(0xffbac3ff),
      onTertiaryFixedVariant: Color(0xff1a38b2),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbec8ff),
      surfaceTint: Color(0xffb8c3ff),
      onPrimary: Color(0xff000f49),
      primaryContainer: Color(0xff6d88ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbec8ff),
      onSecondary: Color(0xff000f49),
      secondaryContainer: Color(0xff6d88ff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffbfc8ff),
      onTertiary: Color(0xff000d4c),
      tertiaryContainer: Color(0xff7087ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141313),
      onSurface: Color(0xfffefaf9),
      onSurfaceVariant: Color(0xffc8cbcc),
      outline: Color(0xffa0a3a4),
      outlineVariant: Color(0xff808484),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff0f39b8),
      primaryFixed: Color(0xffdde1ff),
      onPrimaryFixed: Color(0xff000b3c),
      primaryFixedDim: Color(0xffb8c3ff),
      onPrimaryFixedVariant: Color(0xff002895),
      secondaryFixed: Color(0xffdde1ff),
      onSecondaryFixed: Color(0xff000b3c),
      secondaryFixedDim: Color(0xffb8c3ff),
      onSecondaryFixedVariant: Color(0xff002895),
      tertiaryFixed: Color(0xffdee1ff),
      onTertiaryFixed: Color(0xff00093f),
      tertiaryFixedDim: Color(0xffbac3ff),
      onTertiaryFixedVariant: Color(0xff00259b),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffcfaff),
      surfaceTint: Color(0xffb8c3ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffbec8ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffcfaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbec8ff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffdfaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffbfc8ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff8fbfc),
      outline: Color(0xffc8cbcc),
      outlineVariant: Color(0xffc8cbcc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff001e78),
      primaryFixed: Color(0xffe3e5ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffbec8ff),
      onPrimaryFixedVariant: Color(0xff000f49),
      secondaryFixed: Color(0xffe3e5ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbec8ff),
      onSecondaryFixedVariant: Color(0xff000f49),
      tertiaryFixed: Color(0xffe3e5ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffbfc8ff),
      onTertiaryFixedVariant: Color(0xff000d4c),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      textTheme: textTheme.apply(
        bodyColor: colorScheme.onSurface,
        displayColor: colorScheme.onSurface,
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      canvasColor: colorScheme.surface,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0),
    );
  }

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
