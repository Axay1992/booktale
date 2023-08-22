import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get en => 'English';

  @override
  String get gu => 'ગુજરાતી';

  @override
  String get appName => 'BookTale';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get languages => 'Languages';

  @override
  String get yourNextChapterAwaits => '“Your Next Chapter Awaits”';

  @override
  String get loginAndExplore => 'Login and Explore!';

  @override
  String get emailId => 'Email-ID';

  @override
  String get user => 'User';

  @override
  String get password => 'Password';

  @override
  String get forgotPassword => 'Forgot Password';

  @override
  String get login => 'Login';

  @override
  String get doNotHaveAnAccount => 'Don\'t have an account';

  @override
  String get signUp => 'Sign up';

  @override
  String get emptyEmail => 'Please enter your email';

  @override
  String get validEmail => 'Please enter valid email';

  @override
  String get emptyPwd => 'Please enter your password';

  @override
  String get validPassword => 'Please enter at least 8 characters';

  @override
  String get invalidUserOrPassword => 'Invalid User or Password';

  @override
  String get noWorriesWellSendYouResetInstructions => 'No worries, we’ll send you reset instructions';

  @override
  String get resetPassword => 'reset password';

  @override
  String get backToLogin => 'back to login';

  @override
  String get forgotPasswordEmailNote => 'We can’t seem to find the right email address for you resend the email that you have registered';

  @override
  String get joinTheWorldOfReaders => '“Join the World of Readers: ”';

  @override
  String get signUpAndGetStarted => 'Sign Up and Get Started!';

  @override
  String get fullName => 'Full Name';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get register => 'Register';

  @override
  String get passwordNote => 'Password must have min. 8 characters, 1 special character and 1 numeric character.';

  @override
  String get alreadyHaveAnAccount => 'Already have an account';

  @override
  String get emptyName => 'Please enter full name';

  @override
  String get emptyConfirmPwd => 'Please enter confirm password';

  @override
  String get passwordDoNotMatch => 'Password must be same as above';

  @override
  String get menu => 'Menu';

  @override
  String get categories => 'Categories';

  @override
  String get myProfile => 'My Profile';

  @override
  String get home => 'Home';

  @override
  String get trending => 'Trending';

  @override
  String get cart => 'Cart';

  @override
  String get myOrders => 'My Orders';

  @override
  String get wishlist => 'Wishlist';

  @override
  String get logout => 'Log out';

  @override
  String get recommendations => 'Recommendations';

  @override
  String get ourFavourites => 'OUR FAVOURITES';

  @override
  String get topBooksThisWeek => 'Top Books this week';

  @override
  String transferConformationNote(String society) {
    return 'You are about to transfer the ownership of $society, once you transfer the owner ship you can not revert this change back.';
  }

  @override
  String get enterOtpThatWeSentOn => 'Enter OTP that we sent on +91';

  @override
  String congratulationTransferOwnershipMsg(String member) {
    return 'Congratulation!! You successfully transfer your owner ship to $member.';
  }
}
