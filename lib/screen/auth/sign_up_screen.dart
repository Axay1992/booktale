import 'package:booktale/constant/common_sizebox.dart';
import 'package:booktale/constant/custom_pading_constant.dart';
import 'package:booktale/gen/assets.gen.dart';
import 'package:booktale/gen/fonts.gen.dart';
import 'package:booktale/l10n/app_localizations.dart';
import 'package:booktale/screen/auth/login_screen.dart';
import 'package:booktale/utils/custom_extension.dart';
import 'package:booktale/utils/math_utils.dart';
import 'package:booktale/utils/other_function.dart';
import 'package:booktale/utils/show_toast.dart';
import 'package:booktale/widget/common/common_button_widget.dart';
import 'package:booktale/widget/common/common_textformfiled_widget.dart';
import 'package:booktale/widget/common/cust_text_widget.dart';
import 'package:booktale/widget/common/loading_indicator.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // Controllers
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var userNameController = TextEditingController();

  // Variables
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
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
                title: AppLocalizations.of(context).joinTheWorldOfReaders,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontFamily: FontFamily.familjenGrotesk,
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              CustText(
                title: '${AppLocalizations.of(context).signUpAndGetStarted}"',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontFamily: FontFamily.familjenGrotesk,
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
              spaceHeight30,
              _nameTextFormField(),
              spaceHeight10,
              _emailTextFormField(),
              spaceHeight10,
              _passwordTextFormField(),
              spaceHeight10,
              _confirmPasswordTextFormField(),
              _registerBtn(),
              _loginTextBtn()
            ],
          ),
        ),
      )),
    );
  }

//-----Function----//

  Future<void> _registerFunc() async {
    try {
      if (!(_formKey.currentState?.validate() ?? true)) {
        _autovalidateMode = AutovalidateMode.always;
        return;
      }
      _formKey.currentState?.save();
      keyBoardHideOntap(context);
      //ignore: use_build_context_synchronously
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (ctx) => const ForgotPasswordScreen(),
      //   ),
      // );
    } catch (e) {
      showToast(
        message: AppLocalizations.of(context).invalidUserOrPassword,
      );
      // rethrow;
    } finally {
      _indicatorNotifier.hide();
    }
  }

  void _loginFunc() {
    //ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => const LoginScreen(),
      ),
    );
  }

//-------Wdiget--------//

  Widget _nameTextFormField() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustText(
            title: AppLocalizations.of(context).fullName,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontFamily: FontFamily.familjenGrotesk,
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          CommmonTextFormField(
            autovalidateMode: _autovalidateMode,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            style: const TextStyle(
                fontFamily: FontFamily.familjenGrotesk,
                fontWeight: FontWeight.w700),
            hintText: "Name",
            prefixIcon: Assets.images.icons.userIcon.svg(
                height: getHorizontalSize(20),
                width: getVerticalSize(20),
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.outline, BlendMode.srcIn)),
            hintStyle: TextStyle(
                fontFamily: FontFamily.familjenGrotesk,
                color: Theme.of(context).colorScheme.outline),
            validator: (value) => value?.validateName,
          ),
        ],
      );

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
            controller: passwordController,
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
          _passwordInstruction()
        ],
      );
  Widget _passwordInstruction() => Container(
        padding: CustPadding.smallCardPadding,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.errorContainer,
            borderRadius: BorderRadius.circular(getSize(12))),
        child: CustText(
          title: AppLocalizations.of(context).passwordNote,
          style: TextStyle(
              color: Theme.of(context).colorScheme.outline,
              fontFamily: FontFamily.familjenGrotesk),
        ),
      );

  Widget _confirmPasswordTextFormField() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustText(
            title: AppLocalizations.of(context).confirmPassword,
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
            hintText: AppLocalizations.of(context).confirmPassword,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Theme.of(context).colorScheme.outline,
            ),
            hintStyle: TextStyle(
                fontFamily: FontFamily.familjenGrotesk,
                color: Theme.of(context).colorScheme.outline),
            validator: (value) => value?.validateConfrimPassword(
              confrimPasswordVal: passwordController.text,
            ),
          ),
        ],
      );

  Widget _registerBtn() => CommonElevatedButton(
        btnText: AppLocalizations.of(context).register,
        topMargin: getVerticalSize(30),
        fontWeight: FontWeight.w700,
        color: Theme.of(context).colorScheme.primary,
        onPressed: _registerFunc,
      );

  Widget _loginTextBtn() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustText(
            title:
                AppLocalizations.of(context).alreadyHaveAnAccount.toQuestion(),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontFamily: FontFamily.familjenGrotesk,
                  color: Theme.of(context).colorScheme.outline,
                  fontWeight: FontWeight.w700,
                ),
          ),
          CustText(
            onTap: _loginFunc,
            title: AppLocalizations.of(context).login,
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
