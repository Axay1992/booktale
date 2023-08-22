import 'package:booktale/main.dart';
import 'package:booktale/utils/math_utils.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:kd_api_call/kd_api_call.dart';

void showToast({required dynamic message}) {
  // final scaffold = ScaffoldMessenger.of(context);
  Fluttertoast.showToast(
    msg: message is AppException
        ? message.getMessage
        : (message?.toString() ?? APIErrorMsg.somethingWentWrong),
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.SNACKBAR,
    timeInSecForIosWeb: 3,
    backgroundColor: Theme.of(getContext).primaryColorLight,
    textColor: Theme.of(getContext).primaryColorDark,
    fontSize: getSize(16),
  );
}
