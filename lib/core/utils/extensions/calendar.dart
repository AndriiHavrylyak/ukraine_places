import 'dart:ui';

import '../../config/colorz.dart';

extension CalendarColor on int {
  Color get dayColor {
    if (this == 0) {
      return Colorz.neutralGrey20;
    }
    if (this > 0 && this < 3) {
      return Colorz.lighterGreen;
    }
    if (this > 3 && this < 7) {
      return Colorz.lighterBlue20;
    } else {
      return Colorz.lightRed20;
    }
  }
}

extension CalendarBorderColor on int {
  Color get borderColor {
    if (this == 0) {
      return Colorz.neutralGrey50;
    }
    if (this > 0 && this < 3) {
      return Colorz.lightGreen;
    }
    if (this > 3 && this < 7) {
      return Colorz.primaryDark;
    } else {
      return Colorz.error;
    }
  }
}





extension DaysBetweenCurrent on DateTime {
  int get daysBetween {
    return (this
        .difference(DateTime.now())
        .inHours / 24).round();
  }
}
