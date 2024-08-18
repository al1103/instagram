import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData get themeData => ThemeData(
        useMaterial3: true,
        dividerColor: neutral.shade200,
        disabledColor: neutral.shade500,
        colorScheme: ColorScheme.fromSeed(
          seedColor: blue,
          primary: blue,
          surface: Colors.white,
          onPrimary: Colors.white,
          tertiary: blue,
          error: tomato.shade500,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          border: const UnderlineInputBorder(),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: blue),
          ),
          counterStyle:
              TextStyle(fontSize: 12, height: 1.33, color: neutral[400]),
          labelStyle: const TextStyle(fontSize: 12, height: 1, color: blue),
          floatingLabelStyle: const TextStyle(fontSize: 14, height: 1),
          hintStyle: TextStyle(fontSize: 14, height: 1, color: neutral[400]),
          errorStyle: const TextStyle(fontSize: 12, height: 1.33),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
          elevation: 0,
          showDragHandle: true,
          dragHandleColor: Colors.transparent,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(8),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          ),
        ),
        scrollbarTheme: ScrollbarThemeData(
          radius: const Radius.circular(10),
          thumbColor: WidgetStatePropertyAll(neutral.shade400),
        ),
        navigationBarTheme: NavigationBarThemeData(
          indicatorColor: Colors.white,
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(
                color: Color(0xFF06598E),
              );
            }
            return TextStyle(
              color: AppTheme.neutral[300],
            );
          }),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 96,
            fontWeight: FontWeight.w700,
            height: 1,
            letterSpacing: -0.02,
            wordSpacing: -0.02,
          ),
          displayMedium: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.w600,
            height: 1,
            letterSpacing: -0.02,
            wordSpacing: -0.02,
          ),
          displaySmall: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w600,
            height: 1.167,
            letterSpacing: -0.02,
            wordSpacing: -0.02,
          ),
          headlineLarge: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            height: 1.2,
            letterSpacing: -0.02,
            wordSpacing: -0.02,
          ),
          headlineMedium: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            height: 1.25,
            letterSpacing: -0.01,
            wordSpacing: -0.01,
          ),
          headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            height: 1.167,
            letterSpacing: -0.01,
            wordSpacing: -0.01,
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            height: 1.4,
          ),
          titleMedium: TextStyle(
            fontSize: 18,
            height: 1.33,
          ),
          titleSmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            height: 1.5,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            height: 1.5,
          ),
          bodySmall: TextStyle(
            fontSize: 16,
            height: 1.5,
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            height: 0.07,
            letterSpacing: -0.60,
          ),
          labelMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 0.10,
            letterSpacing: -0.28,
          ),
          labelSmall: TextStyle(
            fontSize: 14,
            height: 1.43,
          ),
        ),
      );

  static const Color green = Color(0XFF318B2E);

  static const MaterialColor blue = MaterialColor(0xFF137DC0, <int, Color>{
    50: Color(0xFFE3EFF7),
    100: Color(0xFFB8D8EC),
    200: Color(0xFF89BEE0),
    300: Color(0xFF5AA4D3),
    400: Color(0xFF3691C9),
    500: Color(0xFF137DC0),
    600: Color(0xFF1175BA),
    700: Color(0xFF0E6AB2),
    800: Color(0xFF0B60AA),
    900: Color(0xFF064D9C),
  });

  static const MaterialColor leaf = MaterialColor(0xFFA855F7, <int, Color>{
    50: Color(0xFFFAF5FF),
    100: Color(0xFFF4E8FF),
    200: Color(0xFFEBD5FF),
    300: Color(0xFFDAB4FE),
    400: Color(0xFFC184FC),
    500: Color(0xFFA855F7),
    600: Color(0xFF9133EA),
    700: Color(0xFF7A22CE),
    800: Color(0xFF6621A8),
    900: Color(0xFF531C87),
    950: Color(0xFF370764),
  });

  static const MaterialColor tomato = MaterialColor(0xFFF65737, <int, Color>{
    50: Color(0xFFFFF3F1),
    100: Color(0xFFFFE6E1),
    200: Color(0xFFFFD1C8),
    300: Color(0xFFFFB1A1),
    400: Color(0xFFFE846B),
    500: Color(0xFFF65737),
    600: Color(0xFFE43F1E),
    700: Color(0xFFC03215),
    800: Color(0xFF9E2D16),
    900: Color(0xFF832B19),
    950: Color(0xFF481207),
  });

  static const MaterialColor amber = MaterialColor(0xFFF9A006, <int, Color>{
    50: Color(0xFFFFFBEB),
    100: Color(0xFFFFF4C6),
    200: Color(0xFFFFE888),
    300: Color(0xFFFFD64A),
    400: Color(0xFFFFC220),
    500: Color(0xFFF9A006),
    600: Color(0xFFB75406),
    700: Color(0xFFB75406),
    800: Color(0xFF94400C),
    900: Color(0xFF7A360D),
    950: Color(0xFF461A02),
  });

  static const MaterialColor neutral = MaterialColor(0xff64646C, <int, Color>{
    0: Color(0xFFFFFFFF),
    25: Color(0xFFF2F2F2),
    50: Color(0xFFF7F7F7),
    100: Color(0xFFF2F2F2),
    200: Color(0xFFE5E5E5),
    300: Color(0xFFD1D1D1),
    400: Color(0xFFA3A3A3),
    500: Color(0xFF737373),
    600: Color(0xFF525252),
    700: Color(0xFF2E2E2E),
    800: Color(0xFF1F1F1F),
    900: Color(0xFF1A1A1A),
    950: Color(0xFF121212),
  });

  static const darkCerulean = Color(0xFF0B4B73);
  static const paleCerulean = Color(0xFFA1CBE6);
  static const iceberg = Color(0xFF71B1D9);
  static const mediumElectricBlue = Color(0xFF06598E);
  static const vampireBlack = Color(0xFF0B0B0C);
  static const cosmicLatte = Color(0xFFFFFBE6);
  static const lava = Color(0xFFCF1322);
  static const seashell = Color(0xFFFFF1F0);
}
