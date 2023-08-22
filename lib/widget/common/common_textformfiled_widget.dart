import 'package:booktale/widget/common/field_decoration.dart';
import 'package:flutter/material.dart';

import '../../utils/math_utils.dart';

class CommmonTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final Color? textColor;
  final Color? cursorColor;
  final Color? prefixIconColor;
  final Color? labelColor;
  final String? labelText;
  final String? hintText;
  final int? maxLength;
  final Widget? prefixIcon;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final double? topMargin;
  final double? bottomMargin;
  final bool obsecurePassword;
  final Widget? suffixIcon;
  final Function()? onTap;
  final bool readOnly;
  final String? initialValue;
  final int? maxLines;
  final TextStyle? style;
  final FocusNode? focusNode;
  final TextAlign textAlign;
  final double? height;
  final double? decorationHeight;
  final double? decorationWidth;
  final double? prefixIconMinWidth;
  final double? suffixIconMinWidth;
  final bool autofocus;
  final TextStyle? hintStyle;
  final EdgeInsets scrollPadding;
  final Widget? error;
  const CommmonTextFormField(
      {super.key,
      this.controller,
      this.textColor,
      this.cursorColor,
      this.prefixIconColor,
      this.labelColor,
      this.prefixIcon,
      this.labelText,
      this.hintText,
      this.onSaved,
      this.onChanged,
      this.autovalidateMode,
      this.validator,
      this.keyboardType,
      this.textInputAction,
      this.topMargin = 12,
      this.bottomMargin = 12,
      this.obsecurePassword = false,
      this.suffixIcon,
      this.onTap,
      this.readOnly = false,
      this.initialValue,
      this.maxLines,
      this.maxLength,
      this.style,
      this.focusNode,
      this.textAlign = TextAlign.start,
      this.height,
      this.decorationHeight,
      this.decorationWidth,
      this.prefixIconMinWidth,
      this.suffixIconMinWidth,
      this.autofocus = false,
      this.hintStyle,
      this.scrollPadding = const EdgeInsets.all(20.0),
      this.error});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.only(
        top: getSize(topMargin ?? 16),
        bottom: getSize(bottomMargin ?? 16),
      ),
      child: TextFormField(
        scrollPadding: scrollPadding,
        cursorColor: cursorColor ?? Theme.of(context).colorScheme.outline,
        autofocus: autofocus,
        onChanged: onChanged,
        textAlign: textAlign,
        focusNode: focusNode,
        maxLines: maxLines,
        maxLength: maxLength,
        initialValue: initialValue,
        readOnly: readOnly,
        onTap: onTap,
        onSaved: onSaved,
        autovalidateMode: autovalidateMode,
        validator: validator,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        controller: controller,
        obscureText: obsecurePassword,
        style: style ??
            Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: textColor ?? Theme.of(context).colorScheme.tertiary,
                ),
        decoration: inputDecorationWithOutline(
          error: error,
          prefixIconMinWidth: prefixIconMinWidth,
          suffixIconMinWidth: suffixIconMinWidth,
          fillColor: Colors.white,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          height: decorationHeight,
          width: decorationWidth,
          hintText: hintText,
          hintStyle: hintStyle,
          // height: getSize(10),

          // FlashImage(
          //   imgURL: prefixIcon ?? "",
          // ),
          //     Icon(
          //   prefixIcon,
          //   color: prefixIconColor ?? ColorConstants.custblueGray698095,
          // ),
          labelText: labelText,
        ),
      ),
    );
  }
}
