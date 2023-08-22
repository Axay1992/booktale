import 'package:flutter/material.dart';

class ColorConstants {
  static const Map<int, Color> colorCodesLight = {
    50: Color(0xFF8496CB),
    100: Color(0xFF7085C2),
    200: Color(0xFF5B73B9),
    300: Color(0xFF4762B1),
    400: Color(0xFF3250A8),
    500: Color(0xFF2D4897),
    600: Color(0xFF284086),
    700: Color(0xFF233876),
    800: Color(0xFF1E3065),
    900: Color(0xFF192854),
  };

  static const Map<int, Color> colorCodesDarkBlue = {
    50: Color(0xFF92B0F7),
    100: Color(0xFF80A3F6),
    200: Color(0xFF6E95F5),
    300: Color(0xFF5C88F3),
    400: Color(0xFF4A7bF2),
    500: Color(0xFF436FDA),
    600: Color(0xFF3B62C2),
    700: Color(0xFF3456A9),
    800: Color(0xFF2C4A91),
    900: Color(0xFF253E79),
  };

  static const Map<int, Color> colorCodesDarkBrown = {
    50: Color(0xFFCD9F94),
    100: Color(0xFFC58F82),
    200: Color(0xFFBD7F70),
    300: Color(0xFFB46F5E),
    400: Color(0xFFAC5F4C),
    500: Color(0xFF9B5644),
    600: Color(0xFF8A4C3D),
    700: Color(0xFF784335),
    800: Color(0xFF67392E),
    900: Color(0xFF563026),
  };

//------------------------------ Material Color------------------------//

  static const MaterialColor custMaterialBlue3250A8 =
      MaterialColor(0xFF3250A8, colorCodesLight);

  static const MaterialColor custMaterialBlue4A7BF2 =
      MaterialColor(0xFF4A7BF2, colorCodesDarkBlue);

  static const MaterialColor custMaterialBrownAC5F4C =
      MaterialColor(0xFFAC5F4C, colorCodesDarkBrown);

  // light theme color
  static const Color custBlue3250A8 = Color(0xFF3250A8);
  static const Color custGrayF6F6F6 = Color(0xFFF6F6F6);
  static const Color custBlack454545 = Color(0xFF454545);
  static const Color custGray9F9F9F = Color(0xFF9F9F9F);
  // static const Color custGray3F59B3 = Color(0xFF3F59B3);
  static const Color backgroundColorFFFFFF = Color(0xFFFFFFFF);
  static const Color custGrayE5E5E5 = Color(0xFFE5E5E5);

  // shimmer color
  static const Color custGrayADADAD = Color(0xFFADADAD);

  // alert color
  static const Color custRedEE2617 = Color(0xFFEE2617);
  static const Color custGreen3B9958 = Color(0xFF3B9958);
  static const Color custGreen3DBA5E = Color(0xFF3DBA5E);

  // dark blue theme color
  static const Color custGrey0E162A = Color(0xFF0E162A);
  static const Color custBlue4A7BF2 = Color(0xFF4A7BF2);
  static const Color custGrey939393 = Color(0xFF939393);
  static const Color custBlue192135 = Color(0xFF192135);

  // dark black theme color
  static const Color custBrownAC5F4C = Color(0xFFAC5F4C);
  static const Color custGrey1E1E1E = Color(0xFF1E1E1E);
  static const Color custGrey000000 = Color(0xFF000000);
  static const Color custGrey252525 = Color(0xFF252525);
}
