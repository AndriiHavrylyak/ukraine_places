import 'package:flutter/material.dart';

extension WrapColumn on Widget {
  Widget wrapColumnFirst(Widget widget) {
    return Column(
      children: [widget, this],
    );
  }

  Widget wrapColumnNext(Widget widget) {
    return Column(
      children: [this, widget],
    );
  }
}
