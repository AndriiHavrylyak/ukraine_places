// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> uk = {
  "my_journeys": "Мої подорожі",
  "profile": "Профіль",
  "main": "Головна",
  "places": "Місця",
  "routes": "Маршрути",
  "email": "Електронна адреса",
  "phone_number": "Телефон",
  "begin_journey": "Розпочати подорож",
  "create_route": "Створити маршрут",
  "route_example": "Приклад маршруту",
  "available_places": "Доступні місця",
  "light_theme": "Світла тема",
  "dark_theme": "Темна тема",
  "system_theme": "Системна тема",
  "setting_profile": "Налаштування профіля",
  "application_language": "Мова додатку",
  "application_theme": "Тема додатку",
  "close": "Закрити",
  "change_language": "Змінити мову",
  "change_theme": "Змінити тему",

};
static const Map<String,dynamic> en = {
  "my_journeys": "My journeys",
  "profile": "Profile",
  "main": "Main",
  "places": "Places",
  "routes": "Routes",
  "email": "Email",
  "phone_number": "Phone number",
  "begin_journey": "Begin journey",
  "create_route": "Create route",
  "route_example": "Route example",
  "available_places": "Available places",
  "light_theme": "Light theme",
  "dark_theme": "Dark theme",
  "system_theme": "System theme",
  "setting_profile": "Setting profile",
  "application_language": "Application language",
  "application_theme": "Application theme",
  "close": "Close",
  "change_language": "Change Language",
  "change_theme": "Change theme",
};
static const Map<String, Map<String,dynamic>> mapLocales = {"uk": uk, "en": en};
}
