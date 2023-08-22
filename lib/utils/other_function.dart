// Key Board Hide On tap
import 'package:flutter/material.dart';

void keyBoardHideOntap(BuildContext context) {
  final FocusScopeNode currentFocus = FocusScope.of(context);

  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}
