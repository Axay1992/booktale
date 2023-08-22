import 'package:booktale/constant/app_constant.dart';
import 'package:booktale/model/auth_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  SharedPreferencesHelper._();
  static SharedPreferencesHelper instance = SharedPreferencesHelper._();
  // Shared Preference Keys
  static const String _kUserInfo = 'user_info';
  static const String _kOnBoarding = 'on_boarding';
  static const String _kTheme = 'theme';
  static const String _kLocale = 'locale';

  // Variables...
  AuthModel? _userInfo;
  bool _isShowOnBoarding = false;
  bool isDarkMode =
      SchedulerBinding.instance.window.platformBrightness == Brightness.light
          ? false
          : true;

  late SharedPreferences _prefs;

  // Load saved data...
  Future<void> loadSavedData() async {
    _prefs = await SharedPreferences.getInstance();
    _getUserDetail();
    _getTheme();
  }

  //!------------------------------------------------- Setter --------------------------------------------------//

  // Set UserInfo...
  Future<void> setUserInfo(
    AuthModel? userInfo,
  ) async {
    _userInfo = userInfo;
    //  _userLoginModel = userLoginModel;

    if (userInfo == null) {
      removeCacheData();
    } else {
      _prefs = await SharedPreferences.getInstance();
      _prefs.setString(_kUserInfo, authModelToJson(userInfo));
    }
  }

  set isShowOnBoarding(bool value) {
    _isShowOnBoarding = value;
    _prefs.setBool(_kOnBoarding, _isShowOnBoarding);
  }

  // Set ThemeData
  Future<void> setTheme(bool isDarkMode) async {
    _prefs = await SharedPreferences.getInstance();
    await _prefs.setBool(_kTheme, isDarkMode);
    // _prefs.remove(_kTheme);
    isDarkMode = isDarkMode;
  }

  // Set Locale
  Future<void> setLcoale(String locale) async {
    _prefs = await SharedPreferences.getInstance();
    await _prefs.setString(_kLocale, locale);
  }

//!------------------------------------------------- Getter --------------------------------------------------//

  // User detail...
  AuthModel? get getUserInfo => _userInfo;

  // User detail...
  AuthModel? _getUserDetail() {
    final String userInfo = _prefs.getString(_kUserInfo) ?? "";
    _userInfo = userInfo.isEmpty ? null : userInfoFromStoredJson(userInfo);
    return getUserInfo;
  }

  bool get isShowOnBoarding => _prefs.getBool(_kOnBoarding) ?? false;

  // Get ThemeData
  ThemeData get getTheme => _getTheme();

  // Get ThemeData
  ThemeData _getTheme() {
    if (_prefs.getBool(_kTheme) != null) {
      isDarkMode = _prefs.getBool(_kTheme)!;
    } else {
      // ignore: deprecated_member_use
      isDarkMode = SchedulerBinding.instance.window.platformBrightness ==
              Brightness.light
          ? false
          : true;
    }
    return isDarkMode
        ? CustomAppTheme.darkBlackTheme
        : CustomAppTheme.lightTheme;
  }

  // Locale detail...
  String? get getLocale => _prefs.getString(_kLocale);

//!----------------------------------------------- Remove Cache Data --------------------------------------------------//
  // Remove Cache Data (Use only when user wants to remove all store data on app)...
  Future<bool> removeCacheData() async {
    return _prefs.remove(_kUserInfo);
  }
}
