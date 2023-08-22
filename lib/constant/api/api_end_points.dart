// API Setup...

class APISetup {
  static const String apiDomain = "https://test.whitegroup.info";
  static const String apiVersion = "v1";
  static const String apiBaseVersion = "/api/$apiVersion/";
  static const String titleKey = 'title';
  static const String messageKey = 'message';
}

// Auth....
class AuthEndPoints {
  static const String _auth = "auth";
  static const String _admin = "admin";
  static const String _otp = "$_auth/otp";
  static const String otpGenerate = "$_otp/generate";
  static const String _user = "$_auth/user";
  static const String changePassword = "$_user/change/password";
  static const String loggedin = "$_user/login";
  static const String adminLoggedin = "$_auth/$_admin/login";
  static const String otpVerify = "$_otp/verify";
  static const String forgot = "$_user/forgot/password";
}

class SiteListEndPoints {
  static const String property = "property/";
  static const String booking = "booking/";
  static const String siteList = "${property}site?page=1&size=10";
  static const String bookingAdd = "${property}booking";
  static const String bookingDropdownList = "${property}site/detail";
  static const String inquiry = "${booking}inquiry";
  static const String wingBySiteId = "${property}site/wing";
}

class ProfileEndPoints {
  static const String _user = "user";
  static const String fileUpload = "$_user/upload/file";
  static const String profileFetch = "$_user/profile";
  static const String profileUpdate = "$_user/update/profile";
}

class FloorPlanEndPoints {
  static const String property = "property/";
  static const String floorPlan = "${property}site/floorplan";
}
