import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';


class CustomShowCaseWidget extends ShowCaseWidget {
  const CustomShowCaseWidget({
    required super.builder,
    super.onFinish,
    super.onStart,
    super.onComplete,
    super.autoPlay,
    super.autoPlayDelay,
    super.autoPlayLockEnable,
    super.blurValue,
  });

  @override
  ShowCaseWidgetState createState() => CustomShowCaseWidgetState();
}

class CustomShowCaseWidgetState extends ShowCaseWidgetState {
  @override
  void completed(GlobalKey<State<StatefulWidget>>? id) {
    var widget = id?.currentWidget;
    if (widget != null && widget is Showcase) {
    }

    super.completed(id);
  }
}
