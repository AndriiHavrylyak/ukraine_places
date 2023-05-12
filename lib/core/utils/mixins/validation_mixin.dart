import '../../constants/runtime_values.dart';

mixin ValidationMixin {
  bool isValidEmail(email) {
    if (email == null) {
      return false;
    }
    return RegExp(RuntimeVal.emailRegex).hasMatch(email);
  }

  bool isValidPassword(password) {
    if (password == null) {
      return false;
    }
    return RegExp(RuntimeVal.passwordRegex).hasMatch(password);
  }

  bool isValidUserName(userName) {
    return RegExp(RuntimeVal.userNameRegex).hasMatch(userName);
  }

  bool isFieldEmpty(String fieldValue) => fieldValue.isEmpty;
}

