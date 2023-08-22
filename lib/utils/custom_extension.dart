// ignore_for_file: avoid_print

import 'package:booktale/gen/assets.gen.dart';
import 'package:booktale/l10n/app_localizations.dart';
import 'package:booktale/main.dart';
import 'package:flash_image/flash_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const String spaceDashRegex = r'[^((0-9)|(a-z)|(A-Z)|\s)]';

//String Extension...
extension StringExtension on String {
  bool get isImage =>
      toLowerCase().endsWith(".jpg") ||
      toLowerCase().endsWith(".jpeg") ||
      toLowerCase().endsWith(".png") ||
      toLowerCase().endsWith(".gif") ||
      toLowerCase().endsWith(".webp") ||
      toLowerCase().endsWith(".heic");

  // Remove Special character from string...
  String get removeSpecialCharacters =>
      trim().replaceAll(RegExp('[^A-Za-z0-9]'), '');

  // Process String...
  List<TextSpan> processCaption({
    String matcher = "#",
    TextStyle? fancyTextStyle,
    TextStyle? normalTextStyle,
    void Function(String)? onTap,
  }) {
    return split(' ')
        .map(
          (text) => TextSpan(
            text:
                '${text.toString().contains(matcher) ? text.replaceAll(matcher, "") : text} ',
            style: text.toString().contains(matcher)
                ? fancyTextStyle
                : normalTextStyle,
            recognizer: text.toString().contains(matcher)
                ? onTap == null
                    ? null
                    : (TapGestureRecognizer()..onTap = () => onTap(text))
                : null,
          ),
        )
        .toList();
  }

  String get toCapitalFirstLetter {
    return isEmpty
        ? ""
        : "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String get toFirstLetter {
    if (isEmpty) return this;
    String temp = "";
    final List<String> splittedWords = isEmpty ? [] : split(" ");

    splittedWords.removeWhere((word) => word.isEmpty);

    if (splittedWords.length == 1) {
      temp = splittedWords[0][0].removeSpecialCharacters.toUpperCase();
    } else if (splittedWords.length >= 2) {
      temp = splittedWords[0][0].removeSpecialCharacters.toUpperCase() +
          splittedWords[1][0].removeSpecialCharacters.toUpperCase();
    }

    return temp;
  }

  //Email validation Regular expression...
  static const String emailRegx =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const String dleteREgx = 'DELETE';

  //Validate Email...
  String? get validateEmail => trim().isEmpty
      ? AppLocalizations.of(getContext)
          .emptyEmail //AlertMessageString.emptyEmail
      : !RegExp(emailRegx).hasMatch(trim())
          ? AppLocalizations.of(getContext).validEmail
          : null;

  // Validate Password...
  String? get validatePassword => trim().isEmpty
      ? AppLocalizations.of(getContext).emptyPwd
      : trim().length < 8
          ? AppLocalizations.of(getContext).validPassword
          : null;

  // // Validate new Password...
  // String? get validateNewPassword => trim().isEmpty
  //     ? AppLocalizations.of(getContext).emptyNewPwd
  //     : trim().length < 8
  //         ? AppLocalizations.of(getContext).validPassword
  //         : null;

  // // // Old Password...
  // String? get validateOldPassword => trim().isEmpty
  //     ? AppLocalizations.of(getContext).oldPwd
  //     : trim().length < 8
  //         ? AppLocalizations.of(getContext).validPassword
  //         : null;

  // // Validate Password...
  // String? validateConfrimPassword({String? confrimPasswordVal}) =>
  //     (trim().isEmpty)
  //         ? AppLocalizations.of(getContext).emptyConfirmPwd
  //         : trim().length < 8
  //             ? AppLocalizations.of(getContext).validPassword
  //             : confrimPasswordVal == null
  //                 ? null
  //                 : this != confrimPasswordVal
  //                     ? AppLocalizations.of(getContext).passwordDoNotMatch
  //                     : null;

  // // Validate phonenumber...
  // String? get validatePhoneNumber => trim().isEmpty
  //     ? AppLocalizations.of(getContext).emptyPhoneNumber
  //     : trim().length < 10
  //         ? AppLocalizations.of(getContext).validPhonenumber
  //         : int.tryParse(this) == null
  //             ? AppLocalizations.of(getContext).validPhonenumber
  //             : null;

  // // Validate Empty Amount
  // String? validateEmpty(String message) => trim().isEmpty ? message : null;

  // String? get validateNumber => trim().isEmpty
  //     ? AppLocalizations.of(getContext).amountErrorMsg
  //     : int.tryParse(this) != null
  //         ? null
  //         : AppLocalizations.of(getContext).amountValidErrorMsg;

  // String? get validateFlatNo =>
  //     trim().isEmpty ? AppLocalizations.of(getContext).emptyFlatNo : null;

  // //Validate Bank Name...
  // // String? get emptyProfileName =>
  // //     trim().isEmpty ? AppLocalizations.of(getContext).emptyProfileName : null;

  // //Validate Site
  // // String? get emptyEnterSiteName => trim().isEmpty
  // //     ? AppLocalizations.of(getContext).emptyEnterSiteName
  // //     : null;

  // // String? get validateFlatNo {
  // // if(trim().isEmpty && this == null){

  // //    return  AlertMessageString.emptyFlatNo;
  // // } else{
  // //  return null;
  // // }}

  String? get validateName =>
      trim().isEmpty ? AppLocalizations.of(getContext).emptyName : null;

  // Validate Password...
  String? validateConfrimPassword({String? confrimPasswordVal}) =>
      (trim().isEmpty)
          ? AppLocalizations.of(getContext).emptyConfirmPwd
          : trim().length < 8
              ? AppLocalizations.of(getContext).validPassword
              : confrimPasswordVal == null
                  ? null
                  : this != confrimPasswordVal
                      ? AppLocalizations.of(getContext).passwordDoNotMatch
                      : null;

  //Change time format to 12 hr...

  //Change time format to 12 hr...

  bool get isNetworkImage =>
      toLowerCase().startsWith("http://") ||
      toLowerCase().startsWith("https://");

  bool get isNetworkPdf =>
      toLowerCase().startsWith("http://") ||
      toLowerCase().startsWith("https://") && toLowerCase().endsWith(".pdf");

  // Validate image url

  // Check route is same route, if its same return empty...
  String getRoute(BuildContext context) {
    return ModalRoute.of(context)?.settings.name == this ? "" : this;
  }

  String addPage({int page = 1}) => "$this&page=$page";
}

extension CustomStyles on TextTheme {
  TextStyle get fieldLableStyle {
    return TextStyle(
      fontSize: 18.0,
      color: Theme.of(getContext).primaryColorDark.withAlpha(240),
      fontWeight: FontWeight.w500,
    );
  }
}

extension AssetGenImageExtension on AssetGenImage {
  Widget get loadImage => FlashImage(
        imgURL: path,
      );
}

extension ColonExtension on String {
  String toCapitalizedWithColon() => length > 0
      ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}:'
      : '';
}

extension QuestionMarkExtension on String {
  String toCapitalizedWithQuestionMark() => length > 0
      ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}?'
      : '';
}

extension CustomStringExtension on String {
  String capitalizeAndAddQuestionMark() {
    if (isEmpty) {
      return this;
    }

    final words = split(' ');
    final capitalizedWords = words.map((word) {
      if (word.isEmpty) {
        return word;
      }
      final firstLetter = word[0].toUpperCase();
      final restOfWord = word.substring(1);
      return '$firstLetter$restOfWord';
    }).toList();

    final result = capitalizedWords.join(' ');
    return '$result?';
  }
}

extension CapitalizeWordsExtension on String {
  String capitalizeWords() {
    if (isEmpty) {
      return this;
    }

    List<String> words = split(' ');
    List<String> capitalizedWords = [];

    for (String word in words) {
      if (word.isNotEmpty) {
        String capitalizedWord =
            word[0].toUpperCase() + word.substring(1).toLowerCase();
        capitalizedWords.add(capitalizedWord);
      }
    }

    return capitalizedWords.join(' ');
  }
}

extension DotExtension on String {
  String toCapitalizedWithDot() => length > 0
      ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}.'
      : '';
}

extension MandatoryExtension on String {
  String toMandatory() => length > 0
      ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}*'
      : '';
}

extension QuestionExtension on String {
  String toQuestion() => length > 0
      ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}?'
      : '';
}

extension OptionalExtension on String {
  String toOptional() => length > 0
      ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}(Optional)'
      : '';
}
// extension CustomLocale on Locale {
//   String get getLanguageName {
//     return getLanguageMap[languageCode] ?? "";
//   }
// }

// extension CustomDateTime on DateTime {
//   String get toRelativeDateTime {
//     return timeago.format(this, locale: App.getLocale().languageCode);
//   }
// }

// extension CustomPackageInfo on PackageInfo {
//   String get getFullVersion => "$version+$buildNumber";
// }

// extension CustomInt on int {
//   String get getPages => AppLocalizations.of(getContext)!.page(this);
// }
