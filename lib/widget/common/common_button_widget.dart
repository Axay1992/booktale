import 'package:booktale/main.dart';
import 'package:booktale/utils/custom_extension.dart';
import 'package:booktale/utils/math_utils.dart';
import 'package:booktale/widget/common/cust_text_widget.dart';
import 'package:flutter/material.dart';

class CommonElevatedButton extends StatelessWidget {
  final String btnText;
  final Function()? onPressed;
  final double? fontSize;
  final Color? color;
  final Color? textColor;
  final double height;
  final double? topMargin;
  final double? bottomMargin;
  final bool disable;
  final FontWeight fontWeight;
  final String? fontFamily;
  final Widget? btnIcon;
  final bool fullWidth;
  final MaterialStateProperty<BorderSide?>? side;
  final BorderSide? border;
  final ButtonStyle? style;
  final TextDecoration? decoration;
  final Color? decorationColor;
  const CommonElevatedButton(
      {Key? key,
      this.btnText = 'Button Text',
      this.onPressed,
      this.color,
      this.fontSize,
      this.height = 50,
      this.topMargin = 16,
      this.bottomMargin = 16,
      this.fontWeight = FontWeight.w500,
      this.fontFamily,
      this.btnIcon,
      this.disable = false,
      this.side,
      this.fullWidth = true,
      this.textColor = Colors.white,
      this.border,
      this.style,
      this.decoration,
      this.decorationColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return commonElevatedButton();
  }

  Widget commonElevatedButton() {
    return Container(
      height: height,
      width: fullWidth ? double.infinity : null,
      margin: EdgeInsets.only(
        top: getSize(topMargin ?? 16),
        bottom: getSize(bottomMargin ?? 16),
      ),
      // decoration: BoxDecoration(boxShadow: CustShadow.shadowLow),
      child: ElevatedButton(
        style: style ??
            ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: border ?? BorderSide.none,
                  borderRadius: BorderRadius.circular(getSize(12)),
                ),
              ),
              side: side, //
              //// (if required border uncommnt below code)
              //=>MaterialStateProperty.all(
              //   BorderSide.lerp(
              //       BorderSide(
              //         style: BorderStyle.solid,
              //         color: Color(0xffe4e978),
              //         width: 10.0,
              //       ),
              //       BorderSide(
              //         style: BorderStyle.solid,
              //         color: Color(0xffe4e978),
              //         width: 10.0,
              //       ),
              //       10.0),
              // ),

              //elevation: MaterialStateProperty.all<double>(8.0),
              backgroundColor: MaterialStateProperty.all<Color?>(
                disable ? Theme.of(getContext).colorScheme.primary : color,
              ),
            ),
        onPressed: disable ? () {} : onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: getSize(4),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (btnIcon != null) ...[
                SizedBox(child: btnIcon),
                const SizedBox(width: 10),
              ],
              CustText(
                align: TextAlign.center,
                title: btnText.capitalizeWords(),
                style: TextStyle(
                  decorationColor: decorationColor,
                  decoration: decoration,
                  fontSize: fontSize ?? 16,
                  color: textColor,
                  fontWeight: fontWeight,
                  fontFamily: fontFamily,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
