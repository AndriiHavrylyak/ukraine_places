String interpolate(String string, List<String> params) {
  String result = string;
  for (int i = 1; i < params.length + 1; i++) {
    result = result.replaceAll('%$i\$', params[i - 1]);
  }

  return result;
}

String interpolateOnce(String string, String param) {
  String result = string;
  result = result.replaceAll('%${1}\$', param);

  return result;
}

extension StringExtension on String {
  String formatParams(List<String> params) => interpolate(this, params);

  String format(String param) => interpolateOnce(this, param);

  String get filterNumbers {
    return replaceAll(RegExp(r'[^0-9]'), '');
  } // '23'

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }



}
