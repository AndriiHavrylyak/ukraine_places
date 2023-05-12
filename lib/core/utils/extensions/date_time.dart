import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

extension ToString on DateTime {
  String toLocalizedString(BuildContext context) {
    String locale = Localizations.localeOf(context).languageCode;
    String dayOfWeek = DateFormat.EEEE(locale).format(this);
    String dayMonth = DateFormat.MMMMd(locale).format(this);
    String year = DateFormat.y(locale).format(this);
    return '$dayOfWeek $dayMonth $year';
  }

  String yyyy() {
    return DateFormat('yyyy').format(this);
  }

  // ignore: non_constant_identifier_names
  String dMMMM_EEEE() {
    return DateFormat('d MMMM, EEEE').format(this);
  }

  String dMMMMyyyy() {
    return DateFormat('d MMMM yyyy').format(this);
  }

  String ddMMyyyyHHmm() {
    return DateFormat("dd.MM.yyyy HH:mm").format(this);
  }

  String get getTime => DateFormat.Hm().format(this);

  // DateTime get roundDateEnd {
  //   if (minute > 0 && minute <= 30) {
  //     return DateTime(year, month, day, hour, 30);
  //   } else if (minute > 30) {
  //     return DateTime(year, month, day, hour + 1, 0);
  //   } else {
  //     return DateTime(year, month, day, hour);
  //   }
  // }

  DateTime get roundDate => minute >= 0 && minute <= 30
      ? DateTime(year, month, day, hour, 0)
      : DateTime(year, month, day, hour+1, 0);

  String get convertToString1CDate =>
      DateFormat("yyyy-MM-ddTHH:mm:ss").format(this);
}

extension ToDate on String {
  DateTime get convertTo1CDate => DateFormat("yyyy-MM-ddTHH:mm:ss").parse(this);

  DateTime get ddMMyyyyHm => DateFormat("dd.MM.yyyy HH:mm").parse(this);

  String get convertStringToStringDate {
    var date = DateFormat("yyyy-MM-ddTHH:mm").parse(this);
    return DateFormat("dd-MM-yyyy HH:mm").format(date);
  }

  String get convertDateToStringDate {
    var date = DateFormat("yyyy-MM-ddTHH:mm").parse(this);
    return DateFormat("dd-MM-yyyy, HH:mm").format(date);
  }


  String get convertDateToOrderDate {
    var date = DateFormat("dd.MM.yyyy HH:mm").parse(this);
    return DateFormat("dd-MM-yyyy, HH:mm").format(date);
  }

  String get stringDateToString {
    return DateFormat("dd.MM.yyyy HH:mm:ss").parse(this).ddMMyyyyHHmm();
  }
}
