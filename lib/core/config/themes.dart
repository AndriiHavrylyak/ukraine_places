import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colorz.dart';
import 'dimens.dart';


class Themes {
  static ThemeData get mainTheme {
    return ThemeData(
      primaryColor: Colorz.primary,
      scaffoldBackgroundColor: Colorz.white,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      checkboxTheme: checkBoxMainTheme,
      inputDecorationTheme: inputDecorationMainTheme,
      elevatedButtonTheme: elevatedButtonMainTheme,
    );
  }

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blueGrey,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blueGrey[800],
    ),

  );

  static CheckboxThemeData get checkBoxMainTheme {
    return CheckboxThemeData(
      side: MaterialStateBorderSide.resolveWith(
              (_) => const BorderSide(width: 0, color: Colorz.white)),
      checkColor: MaterialStateProperty.resolveWith((_) => Colorz.white),
      fillColor: MaterialStateProperty.resolveWith((_) => Colorz.white),
    );
  }

  static InputDecorationTheme get inputDecorationMainTheme {
    return const InputDecorationTheme(
      counterStyle: TextStyle(color: Colorz.transparent),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(BorderRadiuses.medium)),
        borderSide: BorderSide(color: Colorz.accent, width: BorderSize.tiny),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(BorderRadiuses.medium)),
        borderSide: BorderSide(color: Colorz.accent, width: BorderSize.tiny),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(BorderRadiuses.medium)),
        borderSide: BorderSide(color: Colorz.accent, width: BorderSize.tiny),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(BorderRadiuses.medium)),
        borderSide: BorderSide(color: Colorz.error, width: BorderSize.tiny),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(BorderRadiuses.medium)),
        borderSide: BorderSide(color: Colorz.error, width: BorderSize.tiny),
      ),
      filled: true,
      fillColor: Colorz.white,
      labelStyle: TextStyle(
          color: Colorz.pureGray,
          fontSize: FontSize.small,
          fontWeight: FontWeight.w200,
          height: 0.6),
      errorStyle: TextStyle(
          color: Colorz.error,
          fontSize: FontSize.small,
          fontWeight: FontWeight.w500,
          height: 0.6),
    );
  }

  static ElevatedButtonThemeData get elevatedButtonMainTheme {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith(
                (_) => const TextStyle(color: Colorz.error)),
        backgroundColor:
        MaterialStateProperty.all<Color>(Colorz.buttonEnabledLight),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderRadiuses.medium),
          ),
        ),
      ),
    );
  }

  //WHITE
  static TextStyle get textStyleAppBar {
    return const TextStyle(
        color: Colorz.white,
        fontSize: FontSize.medium,
        fontWeight: FontWeight.w600);
  }

  static TextStyle get textStyleWhiteMediumBold {
    return const TextStyle(
      color: Colorz.white,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get textStyleWhiteSmallBold {
    return const TextStyle(
      color: Colorz.white,
      letterSpacing: 1,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      fontSize: FontSize.small,
    );
  }

  static TextStyle get textStyleWhiteLittleNormal {
    return const TextStyle(
      color: Colorz.white,
      fontSize: FontSize.little,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get textStyleWhiteLittleNormalUnderline {
    return const TextStyle(
      color: Colorz.white,
      fontSize: FontSize.little,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.underline,
    );
  }

  static TextStyle get textStyleWhiteMediumNormal {
    return const TextStyle(
      color: Colorz.white,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get textStyleWhiteMediumW600 {
    return const TextStyle(
      color: Colorz.white,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get textStyleWhiteLittleW600 {
    return const TextStyle(
      color: Colorz.white,
      fontSize: FontSize.little,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get textStyleWhiteSmall500 {
    return const TextStyle(
      color: Colorz.white,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get textStyleWhiteNormalW600 {
    return const TextStyle(
      color: Colorz.white,
      fontSize: FontSize.normal,
      fontWeight: FontWeight.w600,
    );
  }

//PrimaryDark

  static TextStyle get textStylePrimaryDarkMediumNormal {
    return const TextStyle(
      color: Colorz.primaryDark,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get textStylePrimaryDarkLittleW500 {
    return const TextStyle(
      color: Colorz.primaryDark,
      fontSize: FontSize.little,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get textStylePrimaryDarkSmallW500 {
    return const TextStyle(
      color: Colorz.primaryDark,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get textStylePrimaryDarkUnderlineMediumW400 {
    return const TextStyle(
      decoration: TextDecoration.underline,
      color: Colorz.primaryDark,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get textStylePrimaryDarkUnderlineMediumW500 {
    return const TextStyle(
      decoration: TextDecoration.underline,
      color: Colorz.primaryDark,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get textStylePrimaryDarkUnderlineMediumW600 {
    return const TextStyle(
      decoration: TextDecoration.underline,
      color: Colorz.primaryDark,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get textStylePrimaryDarkSmallNormal {
    return const TextStyle(
      decoration: TextDecoration.underline,
      color: Colorz.primaryDark,
      fontSize: FontSize.small,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get textStylePrimaryDarkSmallW400 {
    return const TextStyle(
      color: Colorz.primaryDark,
      fontSize: FontSize.small,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get textStylePrimaryDarkGiganticW500 {
    return const TextStyle(
      color: Colorz.primaryDark,
      fontSize: FontSize.gigantic,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get textStylePrimaryDarkMediumW600 {
    return const TextStyle(
      color: Colorz.primaryDark,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.w600,
    );
  }

  //LightGrey
  static TextStyle get textStyleGrayMediumW600 {
    return const TextStyle(
      color: Colorz.cancelGrey,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get textStyleGrayMediumBold {
    return const TextStyle(
      color: Colorz.lightGray,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get textStyleGrayMediumW400 {
    return const TextStyle(
      color: Colorz.lightGray,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get textStyleGraySmallW500 {
    return const TextStyle(
      color: Colorz.lightGray,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get textStyleGraySmallBold {
    return const TextStyle(
      color: Colorz.lightGray,
      letterSpacing: 1,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      fontSize: FontSize.small,
    );
  }

  static TextStyle get textStyleGrayLittleNormal {
    return const TextStyle(
      color: Colorz.lightGray,
      fontSize: FontSize.little,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get textStyleGrayTinyNormal {
    return const TextStyle(
      color: Colorz.lightGray,
      fontSize: FontSize.tiny,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get textStyleNeutralGrayLittleW400 {
    return const TextStyle(
      color: Colorz.neutralGray,
      fontSize: FontSize.little,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get textStyleNeutralGraySmallW400 {
    return const TextStyle(
      color: Colorz.neutralGray,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get textStyleNeutralGray70TinierW400 {
    return const TextStyle(
      color: Colorz.neutralGrey70,
      fontSize: FontSize.tinier,
      fontWeight: FontWeight.w400,
    );
  }

  //TextBlack
  static TextStyle get textStyleBlackTinyW400 {
    return const TextStyle(
      color: Colorz.textBlack,
      fontSize: FontSize.tiny,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get textStyleBlackLittleW500 {
    return const TextStyle(
      color: Colorz.textBlack,
      fontSize: FontSize.little,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get textStyleBlackSmallW500 {
    return const TextStyle(
      color: Colorz.textBlack,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get textStyleBlackSmallW600 {
    return const TextStyle(
      color: Colorz.textBlack,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get textStyleBlackSmallW400 {
    return const TextStyle(
      color: Colorz.textBlack,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get textStyleBlack50SmallW400 {
    return const TextStyle(
      color: Colorz.textBlack50,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get textStyleBlackLittleW400 {
    return const TextStyle(
      color: Colorz.textBlack,
      fontSize: FontSize.little,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get textStyleBlackMediumNormal {
    return const TextStyle(
      color: Colorz.textBlack,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get textStyleBlackMediumW500 {
    return const TextStyle(
      color: Colorz.textBlack,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get textStyleBlackNormalW500 {
    return const TextStyle(
      color: Colorz.textBlack,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get textStyleBlackNormalW600 {
    return const TextStyle(
      color: Colorz.textBlack,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.w600,
    );
  }

  //other

  static TextStyle get textStyleRedMediumW600 {
    return const TextStyle(
      color: Colorz.error,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get textStyleDropdown {
    return const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: FontSize.little,
    );
  }

  static TextStyle get textStyleErrorDefault {
    return const TextStyle(color: Colorz.error);
  }

  static ElevatedButtonThemeData get textGray {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith(
                (_) => const TextStyle(color: Colorz.error)),
        backgroundColor:
        MaterialStateProperty.all<Color>(Colorz.buttonEnabledLight),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderRadiuses.medium),
          ),
        ),
      ),
    );
  }
}
