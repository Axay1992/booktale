import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_gu.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('gu')
  ];

  /// No description provided for @en.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get en;

  /// No description provided for @gu.
  ///
  /// In en, this message translates to:
  /// **'ગુજરાતી'**
  String get gu;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'BookTale'**
  String get appName;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @languages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// No description provided for @yourNextChapterAwaits.
  ///
  /// In en, this message translates to:
  /// **'“Your Next Chapter Awaits”'**
  String get yourNextChapterAwaits;

  /// No description provided for @loginAndExplore.
  ///
  /// In en, this message translates to:
  /// **'Login and Explore!'**
  String get loginAndExplore;

  /// No description provided for @emailId.
  ///
  /// In en, this message translates to:
  /// **'Email-ID'**
  String get emailId;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forgotPassword;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @doNotHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account'**
  String get doNotHaveAnAccount;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @emptyEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get emptyEmail;

  /// No description provided for @validEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid email'**
  String get validEmail;

  /// No description provided for @emptyPwd.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get emptyPwd;

  /// No description provided for @validPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter at least 8 characters'**
  String get validPassword;

  /// No description provided for @invalidUserOrPassword.
  ///
  /// In en, this message translates to:
  /// **'Invalid User or Password'**
  String get invalidUserOrPassword;

  /// No description provided for @noWorriesWellSendYouResetInstructions.
  ///
  /// In en, this message translates to:
  /// **'No worries, we’ll send you reset instructions'**
  String get noWorriesWellSendYouResetInstructions;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'reset password'**
  String get resetPassword;

  /// No description provided for @backToLogin.
  ///
  /// In en, this message translates to:
  /// **'back to login'**
  String get backToLogin;

  /// No description provided for @forgotPasswordEmailNote.
  ///
  /// In en, this message translates to:
  /// **'We can’t seem to find the right email address for you resend the email that you have registered'**
  String get forgotPasswordEmailNote;

  /// No description provided for @joinTheWorldOfReaders.
  ///
  /// In en, this message translates to:
  /// **'“Join the World of Readers: ”'**
  String get joinTheWorldOfReaders;

  /// No description provided for @signUpAndGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Sign Up and Get Started!'**
  String get signUpAndGetStarted;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @passwordNote.
  ///
  /// In en, this message translates to:
  /// **'Password must have min. 8 characters, 1 special character and 1 numeric character.'**
  String get passwordNote;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account'**
  String get alreadyHaveAnAccount;

  /// No description provided for @emptyName.
  ///
  /// In en, this message translates to:
  /// **'Please enter full name'**
  String get emptyName;

  /// No description provided for @emptyConfirmPwd.
  ///
  /// In en, this message translates to:
  /// **'Please enter confirm password'**
  String get emptyConfirmPwd;

  /// No description provided for @passwordDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Password must be same as above'**
  String get passwordDoNotMatch;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @myProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get myProfile;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @trending.
  ///
  /// In en, this message translates to:
  /// **'Trending'**
  String get trending;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @myOrders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get myOrders;

  /// No description provided for @wishlist.
  ///
  /// In en, this message translates to:
  /// **'Wishlist'**
  String get wishlist;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout;

  /// No description provided for @recommendations.
  ///
  /// In en, this message translates to:
  /// **'Recommendations'**
  String get recommendations;

  /// No description provided for @ourFavourites.
  ///
  /// In en, this message translates to:
  /// **'OUR FAVOURITES'**
  String get ourFavourites;

  /// No description provided for @topBooksThisWeek.
  ///
  /// In en, this message translates to:
  /// **'Top Books this week'**
  String get topBooksThisWeek;

  /// No description provided for @transferConformationNote.
  ///
  /// In en, this message translates to:
  /// **'You are about to transfer the ownership of {society}, once you transfer the owner ship you can not revert this change back.'**
  String transferConformationNote(String society);

  /// No description provided for @enterOtpThatWeSentOn.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP that we sent on +91'**
  String get enterOtpThatWeSentOn;

  /// No description provided for @congratulationTransferOwnershipMsg.
  ///
  /// In en, this message translates to:
  /// **'Congratulation!! You successfully transfer your owner ship to {member}.'**
  String congratulationTransferOwnershipMsg(String member);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'gu'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'gu': return AppLocalizationsGu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
