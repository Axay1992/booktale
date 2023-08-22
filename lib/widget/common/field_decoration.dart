import 'package:booktale/main.dart';
import 'package:booktale/utils/math_utils.dart';
import 'package:flutter/material.dart';

// InputDecoration without outline
InputDecoration inputDecorationWithoutOutline({
  required String hintText,
  required Widget suffixIcon,
}) {
  return InputDecoration(
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getSize(10),
      ),
      borderSide: BorderSide(
        color: Theme.of(getContext).primaryColorLight,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getSize(10),
      ),
      borderSide: BorderSide(
        color: Theme.of(getContext).primaryColorLight,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getSize(10),
      ),
      borderSide: BorderSide(
        color: Theme.of(getContext).primaryColorLight,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(getContext).primaryColorLight,
      ),
      borderRadius: BorderRadius.circular(
        getSize(10),
      ),
    ),
    //filled: true,
    //fillColor: Theme.of(getContext).primaryColorLight,
    suffixIcon: suffixIcon,
    suffixIconConstraints: BoxConstraints(minWidth: getHorizontalSize(50)),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(getContext).primaryColorLight,
      ),
      borderRadius: BorderRadius.circular(
        getSize(10),
      ),
    ),
    hintText: hintText,
    contentPadding: EdgeInsets.symmetric(
      vertical: getVerticalSize(20),
      horizontal: getHorizontalSize(20),
    ),
    hintStyle: TextStyle(color: Theme.of(getContext).secondaryHeaderColor),
  );
}

// InputDecoration with outline
InputDecoration inputDecorationWithOutline(
    {Widget? error,
    String? labelText,
    String? hintText,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Widget? suffix,
    Color? fillColor,
    double? height,
    double? width,
    Color? labelColor,
    double? prefixIconMinWidth,
    double? suffixIconMinWidth,
    TextStyle? hintStyle}) {
  return InputDecoration(
    error: error,
    hintText: hintText,
    hintStyle: hintStyle,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    suffix: suffix,
    suffixIconColor: Theme.of(getContext).colorScheme.secondary,
    prefixIconConstraints:
        BoxConstraints(minWidth: prefixIconMinWidth ?? getHorizontalSize(50)),
    suffixIconConstraints:
        BoxConstraints(minWidth: suffixIconMinWidth ?? getHorizontalSize(50)),
    contentPadding: EdgeInsets.symmetric(
      vertical: height ?? getVerticalSize(16),
      horizontal: width ?? getHorizontalSize(20),
    ),
    counterText: '',
    labelText: labelText,
    filled: fillColor == null,
    fillColor: fillColor,
    labelStyle: TextStyle(
      color: labelColor ?? Theme.of(getContext).colorScheme.secondary,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getSize(10),
      ),
      borderSide: BorderSide(
        color: Theme.of(getContext).secondaryHeaderColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getSize(12),
      ),
      borderSide: BorderSide(
        color: Theme.of(getContext).colorScheme.outline,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getSize(12),
      ),
      borderSide: BorderSide(
        color: Theme.of(getContext).colorScheme.outline,
      ),
    ),
  );
}
