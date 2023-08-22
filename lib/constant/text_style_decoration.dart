// ignore_for_file: deprecated_member_use

import 'package:booktale/constant/color_constant.dart';
import 'package:booktale/constant/string_constant.dart';
import 'package:flutter/material.dart';


class TextStyleDecoration {
  TextStyleDecoration._();
  static TextStyleDecoration instance = TextStyleDecoration._();

  // App Default font...
  static String? fontFamily = CustomFont.jost;

  // Get Light Rext Theme...
  TextTheme get getLightTheme => TextTheme(
        overline: _overlineLight, // 10.0
        caption: _captionLight, // 12.0
        bodyText1: _body1Light, // 14.0
        bodyText2: _body2Light, // 16.0
        headline1: _headline1Light, // 18.0
        headline2: _headline2Light, // 20.0
        headline3: _headline3Light, // 22.0
        headline4: _headline4Light, // 24.0
        headline5: _headline5Light, // 26.0
        headline6: _headline6Light, // 28.0
        subtitle1:
            _subTitleLight, // 14.0 this is also used when no style is given to textfield..
        subtitle2: _subHeadlineLight, // 16.0
        button: _buttonLight, // 16.0
      );

  // Get Dark Blue Text theme...
  TextTheme get getDarkBlueTheme => TextTheme(
        overline: _overlineDarkBlue, // 10.0
        caption: _captionDarkBlue, // 12.0
        bodyText1: _body1DarkBlue, // 14.0
        bodyText2: _body2DarkBlue, // 16.0
        headline1: _headline1DarkBlue, // 18.0
        headline2: _headline2DarkBlue, // 20.0
        headline3: _headline3DarkBlue, // 22.0
        headline4: _headline4DarkBlue, // 24.0
        headline5: _headline5DarkBlue, // 26.0
        headline6: _headline6DarkBlue, // 28.0
        subtitle1:
            _subTitleDarkBlue, // 14.0 this is also used when no style is given to textfield..
        subtitle2: _subHeadlineDarkBlue, // 16.0
        button: _buttonDarkBlue, // 16.0
      );

  // Get Dark Black Text theme...
  TextTheme get getDarkBlackTheme => TextTheme(
        overline: _overlineDarkBlack, // 10.0
        caption: _captionDarkBlack, // 12.0
        bodyText1: _body1DarkBlack, // 14.0
        bodyText2: _body2DarkBlack, // 16.0
        headline1: _headline1DarkBlack, // 18.0
        headline2: _headline2DarkBlack, // 20.0
        headline3: _headline3DarkBlack, // 22.0
        headline4: _headline4DarkBlack, // 24.0
        headline5: _headline5DarkBlack, // 26.0
        headline6: _headline6DarkBlack, // 28.0
        subtitle1:
            _subTitleDarkBlack, // 14.0 this is also used when no style is given to textfield..
        subtitle2: _subHeadlineDarkBlack, // 16.0
        button: _buttonDarkBlack, // 16.0
      );

  // ---------- Light Theme ----------
  static TextStyle get appBarTextStyleLight => TextStyle(
        fontWeight: FontWeight.w600,
        color: ColorConstants.backgroundColorFFFFFF,
        fontFamily: fontFamily,
        letterSpacing: 0.01,
        fontSize: 20.0,
      );

  static final _overlineLight = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 10.0,
    fontWeight: FontWeight.w700,
  );
  static final _captionLight = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custGray9F9F9F,
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle _body1Light = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  static final _body2Light = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline1Light = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline2Light = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
  );

  static final _headline3Light = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline4Light = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  static final _headline5Light = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 26.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline6Light = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 28.0,
    fontWeight: FontWeight.w700,
  );

  static final _subTitleLight = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custGray9F9F9F,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );

  static final _subHeadlineLight = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final _buttonLight = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue3250A8,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  // ---------- Dark Blue Theme ----------
  static TextStyle get appBarTextStyleDarkBlue => TextStyle(
        fontWeight: FontWeight.w600,
        color: ColorConstants.custBlue192135,
        fontFamily: fontFamily,
        letterSpacing: 0.01,
        fontSize: 20.0,
      );

  static final _overlineDarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 10.0,
    fontWeight: FontWeight.w700,
  );
  static final _captionDarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custGrey939393,
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle _body1DarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  static final _body2DarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline1DarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline2DarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
  );

  static final _headline3DarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline4DarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  static final _headline5DarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 26.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline6DarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 28.0,
    fontWeight: FontWeight.w700,
  );

  static final _subTitleDarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custGrey939393,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );

  static final _subHeadlineDarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final _buttonDarkBlue = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBlue4A7BF2,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  // ---------- Dark Blue Theme ----------
  static TextStyle get appBarTextStyleDarkBlack => TextStyle(
        fontWeight: FontWeight.w600,
        color: ColorConstants.custBlue192135,
        fontFamily: fontFamily,
        letterSpacing: 0.01,
        fontSize: 20.0,
      );

  static final _overlineDarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 10.0,
    fontWeight: FontWeight.w700,
  );
  static final _captionDarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custGrey939393,
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle _body1DarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  static final _body2DarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline1DarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline2DarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
  );

  static final _headline3DarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline4DarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  static final _headline5DarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 26.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline6DarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 28.0,
    fontWeight: FontWeight.w700,
  );

  static final _subTitleDarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custGrey939393,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );

  static final _subHeadlineDarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final _buttonDarkBlack = TextStyle(
    fontFamily: fontFamily,
    color: ColorConstants.custBrownAC5F4C,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );
}
