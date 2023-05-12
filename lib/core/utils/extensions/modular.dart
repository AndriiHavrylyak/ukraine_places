import 'package:flutter_modular/flutter_modular.dart';

extension NavHistory on List<ParallelRoute> {

  String toLog() {
    return map((e) => e.name).toString().replaceAll(',', '');
  }
}
