// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusbarContentStyle extends StatelessWidget {
  final Widget? child;
  final StatusbarContentColor? statusbarContentColor;
  const StatusbarContentStyle({
    Key? key,
    this.child,
    this.statusbarContentColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Setting dark will make status bar content dark and light will set light content...
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: (statusbarContentColor ?? StatusbarContentColor.Black) ==
              StatusbarContentColor.White
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: child!,
    );
  }
}

enum StatusbarContentColor {
  Black,
  White,
}
