import 'dart:convert';


import 'package:booktale/constant/api.dart/api_end_points.dart';
import 'package:booktale/constant/enum.dart';
import 'package:booktale/utils/shared_preference.dart';
import 'package:http/http.dart' as http;
import 'package:kd_api_call/kd_api_call.dart';

class ApiMiddleware {
  ApiMiddleware._();

  static ApiMiddleware instance = ApiMiddleware._();
  String appName = "";
  String apiResponse = "";
  String? fcmToken;

  // default params...
  Future<void> getDefaultParams() async {
    // Get user Info...
    await SharedPreferencesHelper.instance.loadSavedData();
    // await _fetchAppVersion();
    // await _fetchDeviceInfo();
  }

  // Fetch app. version...
  // Future<void> _fetchAppVersion() async {
  //   final PackageInfo packageInfo = await PackageInfo.fromPlatform();
  //   final String version = packageInfo.version;
  //   final String buildNumber = packageInfo.buildNumber;
  //   _appVersionBuild = 'Version:$version Build:$buildNumber';
  //   _appVersion = version;
  //   appName = packageInfo.appName;
  // }

  // Default parameter to add in all parameter...
  // Map<String, dynamic> get _getDefaultParams {
  //   final Map<String, dynamic> map = {
  //     "sessionDetails": {
  //       "deviceToken": fcmToken,
  //       "deviceId": _deviceUUID,
  //       "deviceOs": _deviceType,
  //       "osVersion": _appVersionBuild
  //     }
  //   };

  //   return map;
  // }

  // Get Device Info... (Device Unique Id(UUID))
  // Future<void> _fetchDeviceInfo() async {
  //   try {
  //     final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //     if (Platform.isAndroid) {
  //       final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  //       _deviceUUID = androidInfo.id ?? "";
  //       _deviceType = androidInfo.model ?? "Android";
  //     } else {
  //       final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  //       _deviceUUID = iosInfo.identifierForVendor ?? "";
  //       _deviceType =
  //           "${iosInfo.model ?? "iOS"} ${iosInfo.systemVersion ?? ""}";
  //     }
  //   } catch (e) {
  //     print("Error fetching device info");
  //   }
  // }

  //Get Final Url...
  String getFinalURL({String endpoint = "", ServiceType? port}) {
    //Live Base URL...

    late String liveBaseURL;
    if (port != null) {
      liveBaseURL =
          "${APISetup.apiDomain.toString()}:${ServicePortMap[port.toString()]}${APISetup.apiBaseVersion}";
    } else {
      liveBaseURL =
          "${APISetup.apiDomain.toString()}${APISetup.apiBaseVersion}";
    }
    //Check if App is in Debug or Live Mode...
    final String finalURL = liveBaseURL + endpoint;
    return finalURL;
  }

  //Get Header...
  Map<String, String> get getHeader {
    final Map<String, String> header = {'Content-Type': 'application/json'};

    if (SharedPreferencesHelper.instance.getUserInfo?.data?.token!.isNotEmpty ??
        false) {
      header["token"] =
          SharedPreferencesHelper.instance.getUserInfo!.data!.token.toString();
    }
    return header;
  }

  // Call API Service...
  Future<String> callService(
      {required APIRequestInfo requestInfo,
      ServiceType? port,
      Map<String, String>? headers
      //required APIRequestInfo requestInfo,
      }) async {
    try {
      // Get Final URL...
      requestInfo.url = getFinalURL(endpoint: requestInfo.url, port: port);

      // Get header...
      requestInfo.headers = getHeader;
      // set custom headers
      requestInfo.headers?.addAll(headers ?? {});

      // Call Serivce...
      final http.Response apiResponse =
          await ApiCall.instance.callService(requestInfo: requestInfo);

      return processResponse(apiResponse);
    } on FormatException catch (e) {
      throw e.message;
    } catch (error) {
      rethrow;
    }
  }

  //Get Error Title...
  String _getErrorTitle(http.Response response) => response.body.isEmpty
      ? APIErrorMsg.defaultErrorTitle
      : (jsonDecode(response.body)[APISetup.titleKey]) ?? "";

  //Get Error Message...
  String _getErrorMsg(http.Response response) => response.body.isEmpty
      ? APIErrorMsg.somethingWentWrong
      : (jsonDecode(response.body)[APISetup.messageKey]) ??
          APIErrorMsg.somethingWentWrong;

  //Process Response...
  String processResponse(http.Response response) {
    String title = "";
    String msg = "";
    if (response.statusCode != 200) {
      title = _getErrorTitle(response);
      msg = _getErrorMsg(response);
    }

    switch (response.statusCode) {
      case 200:
      case 201:
      case 202:
      case 204:
        // Fluttertoast.showToast(msg: _getErrorMsg(response));
        return response.body;

      case 401:
        //Provider.of<AuthProvider>(getContext, listen: false).logout();
        throw AppException(
          statusCode: response.statusCode,
          title: title,
          message: msg,
          type: ExceptionType.UnAuthorised,
        );
      case 403:
        throw AppException(
          statusCode: response.statusCode,
          title: title,
          message: msg,
          // type: ExceptionType.Forbidden,
        );
      case 410:
      case 400:
      case 404:
        throw AppException(
          statusCode: response.statusCode,
          title: title,
          message: msg,
        );
      case 422:
      case 500:
        throw AppException(
          statusCode: response.statusCode,
          title: title,
          message: msg,
        );

      // Service Unavailable...
      case 502:
      case 503:
        throw AppException(
          statusCode: response.statusCode,
          title: APIErrorMsg.underMaintainanceTitle,
          message: APIErrorMsg.underMaintainanceMsg,
          type: ExceptionType.UnderMaintainance,
        );

      default:
        throw AppException(
          statusCode: response.statusCode,
          title: title,
          message: msg,
        );
    }
  }
}
