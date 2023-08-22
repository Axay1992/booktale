import 'package:booktale/constant/color_constant.dart';
import 'package:booktale/constant/text_style_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


// App Theme... (Set all defaults after complete project ui analysis, take time to decide defaults which will help reducing development time further)

class CustomAppTheme {
  CustomAppTheme._();
  static ThemeData lightTheme = ThemeData(
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: ColorConstants.custBlue3250A8,
    ),
    unselectedWidgetColor: ColorConstants.custGrayF6F6F6,
    brightness: Brightness.light,
    primaryColor: ColorConstants.custMaterialBlue3250A8,
    primaryColorLight: ColorConstants.backgroundColorFFFFFF,
    primaryColorDark: ColorConstants.custBlack454545,
    secondaryHeaderColor: ColorConstants.custGray9F9F9F,
    textTheme: TextStyleDecoration.instance.getLightTheme,
    primaryTextTheme: TextStyleDecoration.instance.getLightTheme,
    disabledColor: ColorConstants.custGrey939393.withOpacity(0.3),
    dividerColor: ColorConstants.custGrayF6F6F6,
    dividerTheme: const DividerThemeData(
      color: ColorConstants.custGrayF6F6F6,
      thickness: 1,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorConstants.backgroundColorFFFFFF,
    ),
    scaffoldBackgroundColor: ColorConstants.custGrayE5E5E5,
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      height: 50.0,
      buttonColor: ColorConstants.custBlue3250A8,
      minWidth: double.infinity,
    ),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        fixedSize: MaterialStateProperty.all(
          const Size(double.maxFinite, 55),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        side: MaterialStateProperty.all(
          const BorderSide(
            color: ColorConstants.custBlue3250A8,
            width: 2,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(double.maxFinite, 55),
        ),
      ),
    ),
    fontFamily: TextStyleDecoration.fontFamily,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyleDecoration.appBarTextStyleLight,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      color: ColorConstants.custBlue3250A8,
      iconTheme: const IconThemeData(
        color: ColorConstants.backgroundColorFFFFFF,
      ),
    ),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: ColorConstants.custBlack454545),
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: ColorConstants.custMaterialBlue3250A8)
        .copyWith(background: ColorConstants.custBlue3250A8),
  );

  // ---------- Dark Blue Theme -----------

  static ThemeData darkBlueTheme = ThemeData(
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: ColorConstants.custBlue4A7BF2,
    ),
    unselectedWidgetColor: ColorConstants.custGrey0E162A,
    brightness: Brightness.dark,
    primaryColor: ColorConstants.custBlue4A7BF2,
    primaryColorLight: ColorConstants.custBlue192135,
    primaryColorDark: ColorConstants.backgroundColorFFFFFF,
    secondaryHeaderColor: ColorConstants.custGrey939393,
    textTheme: TextStyleDecoration.instance.getDarkBlueTheme,
    primaryTextTheme: TextStyleDecoration.instance.getDarkBlueTheme,
    disabledColor: ColorConstants.custGrey0E162A,
    dividerColor: ColorConstants.custGrey0E162A,
    dividerTheme: const DividerThemeData(
      color: ColorConstants.custGrey0E162A,
      thickness: 1,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorConstants.custBlue192135,
    ),
    scaffoldBackgroundColor: ColorConstants.custGrey0E162A,
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      height: 50.0,
      buttonColor: ColorConstants.custBlue4A7BF2,
      minWidth: double.infinity,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        fixedSize: MaterialStateProperty.all(
          const Size(double.maxFinite, 55),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        shadowColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
        side: MaterialStateProperty.all(
          const BorderSide(
            color: ColorConstants.custBlue4A7BF2,
            width: 2,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(double.maxFinite, 55),
        ),
      ),
    ),
    fontFamily: TextStyleDecoration.fontFamily,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyleDecoration.appBarTextStyleDarkBlue,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      color: ColorConstants.custBlue4A7BF2,
      iconTheme: const IconThemeData(
        color: ColorConstants.custBlue192135,
      ),
    ),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: ColorConstants.custMaterialBlue4A7BF2),
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: ColorConstants.custMaterialBlue4A7BF2)
        .copyWith(background: ColorConstants.custBlue4A7BF2),
  );

  // ---------- Dark Blue Theme -----------

  static ThemeData darkBlackTheme = ThemeData(
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: ColorConstants.custBrownAC5F4C,
    ),
    unselectedWidgetColor: ColorConstants.custGrey1E1E1E,
    brightness: Brightness.dark,
    primaryColor: ColorConstants.custBrownAC5F4C,
    primaryColorLight: ColorConstants.custGrey252525,
    primaryColorDark: ColorConstants.backgroundColorFFFFFF,
    secondaryHeaderColor: ColorConstants.custGrey939393,
    textTheme: TextStyleDecoration.instance.getDarkBlackTheme,
    primaryTextTheme: TextStyleDecoration.instance.getDarkBlackTheme,
    disabledColor: ColorConstants.custGrey1E1E1E,
    dividerColor: ColorConstants.custGrey1E1E1E,
    dividerTheme: const DividerThemeData(
      color: ColorConstants.custGrey1E1E1E,
      thickness: 1,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorConstants.custBlue192135,
    ),
    scaffoldBackgroundColor: ColorConstants.custGrey000000,
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      height: 50.0,
      buttonColor: ColorConstants.custBrownAC5F4C,
      minWidth: double.infinity,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        fixedSize: MaterialStateProperty.all(
          const Size(double.maxFinite, 55),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        shadowColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
        side: MaterialStateProperty.all(
          const BorderSide(
            color: ColorConstants.custBrownAC5F4C,
            width: 2,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(double.maxFinite, 55),
        ),
      ),
    ),
    fontFamily: TextStyleDecoration.fontFamily,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyleDecoration.appBarTextStyleDarkBlack,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      color: ColorConstants.custBrownAC5F4C,
      iconTheme: const IconThemeData(
        color: ColorConstants.custBlue192135,
      ),
    ),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: ColorConstants.custGray9F9F9F),
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: ColorConstants.custMaterialBrownAC5F4C)
        .copyWith(background: ColorConstants.custBrownAC5F4C),
  );
}
