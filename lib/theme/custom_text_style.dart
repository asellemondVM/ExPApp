import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallDMSansOnPrimary =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallErrorContainer10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPrimaryRegular => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular_1 => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallff000000 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 12.fSize,
      );
  static get bodySmallff00000012 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 12.fSize,
      );
  static get bodySmallff000000Regular => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallff000000Regular12 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallff0099ff => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF0099FF),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeMontserrat =>
      theme.textTheme.headlineLarge!.montserrat.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallMontserrat =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label style
  static get labelLargeInter => theme.textTheme.labelLarge!.inter;
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeRed700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red700,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLarge_1 => theme.textTheme.labelLarge!;
  static get labelLargeff000000 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF000000),
      );
  static get labelLargeff000000_1 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF000000),
      );
  // Title text style
  static get titleLargeDMSans => theme.textTheme.titleLarge!.dMSans.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
