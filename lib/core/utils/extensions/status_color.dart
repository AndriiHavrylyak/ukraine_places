
import 'package:flutter/material.dart';

import '../../config/colorz.dart';
import '../../config/dimens.dart';

extension StatusColor on int {
  Color get statusColor {
    if (this == 1 || this == 2) {
      return Colorz.neutralGrey70;
    }

    if (this == 3) {
      return Colorz.primaryTransparent10;
    }
    if (this == 4) {
      return Colorz.greenLight;
    } else {
      return Colorz.lightRed100;
    }
  }

  TextStyle get statusTextStyle {
    if (this == 1 || this == 2) {
      return const TextStyle(
          color: Colorz.neutralGray,
          fontSize: FontSize.little,
          fontWeight: FontWeight.w500);
    }
    if (this == 3) {
      return const TextStyle(
          color: Colorz.primaryDark,
          fontSize: FontSize.little,
          fontWeight: FontWeight.w500);
    }
    if (this == 4) {
      return const TextStyle(
          color: Colorz.green,
          fontSize: FontSize.little,
          fontWeight: FontWeight.w500);
    } else {
      return const TextStyle(
          color: Colorz.error,
          fontSize: FontSize.little,
          fontWeight: FontWeight.w500);
    }
  }
}

