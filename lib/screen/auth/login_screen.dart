import 'package:booktale/constant/common_sizebox.dart';
import 'package:booktale/constant/custom_pading_constant.dart';
import 'package:booktale/gen/assets.gen.dart';
import 'package:booktale/gen/fonts.gen.dart';
import 'package:booktale/l10n/app_localizations.dart';
import 'package:booktale/screen/auth/forgot_password_screen.dart';
import 'package:booktale/screen/auth/sign_up_screen.dart';
import 'package:booktale/screen/home/home_screen.dart';
import 'package:booktale/utils/custom_extension.dart';
import 'package:booktale/utils/math_utils.dart';
import 'package:booktale/widget/common/common_button_widget.dart';
import 'package:booktale/widget/common/common_textformfiled_widget.dart';
import 'package:booktale/widget/common/cust_text_widget.dart';
import 'package:booktale/widget/common/loading_indicator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var passwordController = TextEditingController();
  // Controllers
  var userNameController = TextEditingController();

  // Variables
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Notifiers
  final LoadingIndicatorNotifier _indicatorNotifier =
      LoadingIndicatorNotifier();

//-------Body--------//
  Widget _buildBody() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
          child: SingleChildScrollView(
        padding: CustPadding.authScreenPadding,
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Column(
            children: [
              spaceHeight50,
              Assets.images.pngImg.booktale.image(),
              spaceHeight30,
              CustText(
                title: AppLocalizations.of(context).yourNextChapterAwaits,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontFamily: FontFamily.familjenGrotesk,
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              CustText(
                title: AppLocalizations.of(context).loginAndExplore,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontFamily: FontFamily.familjenGrotesk,
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
              spaceHeight30,
              _emailTextFormField(),
              spaceHeight10,
              _passwordTextFormField(),
              _forgotPassword(),
              _loginBtn(),
              _signTextBtn()
            ],
          ),
        ),
      )),
    );
  }

//-----Function----//

  void _forgotFunc() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => const ForgotPasswordScreen(),
      ),
    );
  }

  Future<void> _loginFunc() async {
    // try {
    //   if (!(_formKey.currentState?.validate() ?? true)) {
    //     _autovalidateMode = AutovalidateMode.always;
    //     return;
    //   }
    //   _formKey.currentState?.save();
    //   keyBoardHideOntap(context);
    //   //ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => const HomeScreen(),
      ),
    );
    // } catch (e) {
    //   showToast(
    //     message: AppLocalizations.of(context).invalidUserOrPassword,
    //   );
    //   // rethrow;
    // } finally {
    //   _indicatorNotifier.hide();
    // }
  }

  void _signUpFunc() {
    //ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => const SignUpScreen(),
      ),
    );
  }

//-------Wdiget--------//

  Widget _emailTextFormField() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustText(
            title: AppLocalizations.of(context).emailId,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontFamily: FontFamily.familjenGrotesk,
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          CommmonTextFormField(
            autovalidateMode: _autovalidateMode,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
                fontFamily: FontFamily.familjenGrotesk,
                fontWeight: FontWeight.w700),
            hintText: "Uname@mail.com",
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Theme.of(context).colorScheme.outline,
            ),
            hintStyle: TextStyle(
                fontFamily: FontFamily.familjenGrotesk,
                color: Theme.of(context).colorScheme.outline),
            validator: (value) => value?.validateEmail,
          ),
        ],
      );

  Widget _passwordTextFormField() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustText(
            title: AppLocalizations.of(context).password,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontFamily: FontFamily.familjenGrotesk,
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          CommmonTextFormField(
            bottomMargin: 0,
            autovalidateMode: _autovalidateMode,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
                fontFamily: FontFamily.familjenGrotesk,
                fontWeight: FontWeight.w700),
            hintText: AppLocalizations.of(context).password,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Theme.of(context).colorScheme.outline,
            ),
            hintStyle: TextStyle(
                fontFamily: FontFamily.familjenGrotesk,
                color: Theme.of(context).colorScheme.outline),
            validator: (value) => value?.validatePassword,
          ),
        ],
      );

  Widget _forgotPassword() => Align(
        alignment: Alignment.centerRight,
        child: CustText(
          onTap: _forgotFunc,
          title: AppLocalizations.of(context)
              .forgotPassword
              .capitalizeAndAddQuestionMark(),
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontFamily: FontFamily.familjenGrotesk,
                color: Theme.of(context).colorScheme.outline,
              ),
        ),
      );

  Widget _loginBtn() => CommonElevatedButton(
        btnText: AppLocalizations.of(context).login,
        topMargin: getVerticalSize(30),
        fontWeight: FontWeight.w700,
        color: Theme.of(context).colorScheme.primary,
        onPressed: _loginFunc,
      );

  Widget _signTextBtn() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustText(
            title: AppLocalizations.of(context).doNotHaveAnAccount.toQuestion(),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontFamily: FontFamily.familjenGrotesk,
                  color: Theme.of(context).colorScheme.outline,
                  fontWeight: FontWeight.w700,
                ),
          ),
          CustText(
            onTap: _signUpFunc,
            title: AppLocalizations.of(context).signUp,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontFamily: FontFamily.familjenGrotesk,
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return LoadingIndicator(
      loadingStatusNotifier: _indicatorNotifier,
      child: Scaffold(
        body: _buildBody(),
      ),
    );
  }
}
