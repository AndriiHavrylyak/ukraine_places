import 'package:flutter/cupertino.dart';

void showCommonActionSheet(
  BuildContext context, {
  required List<CupertinoActionSheetAction> actions,
  required String title,
}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
      title: Text(title),
      actions: actions,
    ),
  );
}
