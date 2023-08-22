// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

class CustShadow {
  static List<BoxShadow> shadowLow2 = [
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      blurRadius: 2.0,
      offset: const Offset(0, 1),
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.15),
      blurRadius: 3.0,
      spreadRadius: 1,
      offset: const Offset(0, 1),
    ),
  ];
  static List<BoxShadow> shadowLow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.15),
      blurRadius: 4.0,
      offset: const Offset(0, 1),
    ),
  ];
  static List<BoxShadow> shadowLow3 = [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 4.0,
      offset: const Offset(0, 1),
    ),
  ];
}
