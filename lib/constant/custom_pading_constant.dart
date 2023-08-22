// ignore_for_file: avoid_classes_with_only_static_members

import 'package:booktale/utils/math_utils.dart';
import 'package:flutter/material.dart';

class CustPadding {
  static EdgeInsets screenPadding = EdgeInsets.symmetric(
    vertical: getVerticalSize(24),
    horizontal: getHorizontalSize(24),
  ); // use
  static EdgeInsets authScreenPadding = EdgeInsets.symmetric(
    vertical: getVerticalSize(32),
    horizontal: getHorizontalSize(32),
  ); //use
  static EdgeInsets screenPaddingHorizontal = EdgeInsets.symmetric(
    horizontal: getHorizontalSize(24),
  );
  static EdgeInsets screenPaddingVertical = EdgeInsets.symmetric(
    vertical: getVerticalSize(24),
  );
  static EdgeInsets cardPaddingMedium = EdgeInsets.symmetric(
    vertical: getVerticalSize(12),
    horizontal: getHorizontalSize(18),
  ); //use
  static EdgeInsets childPadding = EdgeInsets.only(
    left: getHorizontalSize(24),
    right: getHorizontalSize(16),
  );
  static EdgeInsets childPaddingAll = EdgeInsets.symmetric(
    vertical: getVerticalSize(16),
    horizontal: getHorizontalSize(16),
  );
  static EdgeInsets cardPadding = EdgeInsets.symmetric(
    vertical: getVerticalSize(16),
    horizontal: getHorizontalSize(16),
  );
  static EdgeInsets titlePadding = EdgeInsets.symmetric(
    vertical: getVerticalSize(16),
    horizontal: getHorizontalSize(16),
  );
  static EdgeInsets horizontalPadding = EdgeInsets.symmetric(
    horizontal: getHorizontalSize(16),
  );
  static EdgeInsets societyCardPadding = EdgeInsets.symmetric(
    vertical: getVerticalSize(10),
    horizontal: getHorizontalSize(20),
  );
  static EdgeInsets smallCardPadding = EdgeInsets.symmetric(
    vertical: getVerticalSize(10),
    horizontal: getHorizontalSize(10),
  ); //use
  static EdgeInsets extraSmallCardPadding = EdgeInsets.symmetric(
    vertical: getVerticalSize(10),
    horizontal: getHorizontalSize(8),
  );

  static EdgeInsets tablePadding = EdgeInsets.all(
    getSize(8),
  );
  static EdgeInsets largehorizontalPadding = EdgeInsets.symmetric(
    horizontal: getHorizontalSize(50),
  );
  static EdgeInsets mediumPadding = EdgeInsets.symmetric(
    horizontal: getHorizontalSize(40),
    vertical: getVerticalSize(16),
  );
}
