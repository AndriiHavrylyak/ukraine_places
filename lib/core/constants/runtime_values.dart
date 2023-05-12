class RuntimeVal {
  static const passwordRegex =
  r'^.{8,}$';
  static const emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const userNameRegex = r'^[a-zA-Z0-9_\-=@,\.;]+$';
  static const verificationCodeRegex = r'^[0-9]{6}$';
}
