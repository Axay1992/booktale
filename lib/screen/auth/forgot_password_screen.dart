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

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({
    super.key,
  });

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var passwordController = TextEditingController();
  // Controllers
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
                title: AppLocalizations.of(context)
                    .forgotPassword
                    .capitalizeAndAddQuestionMark(),
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontFamily: FontFamily.familjenGrotesk,
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              CustText(
                title: AppLocalizations.of(context)
                    .noWorriesWellSendYouResetInstructions,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontFamily: FontFamily.familjenGrotesk,
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
              spaceHeight30,
              _emailTextFormField(),
              spaceHeight10,
              _resetPasswordBtn(),
              _backToLoginBtn()
            ],
          ),
        ),
      )),
    );
  }

//-----Function----//

  void _forgotFunc() {}
  Future<void> _resetPasswordFunc() async {
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
      //     builder: (ctx) => const HomeScreen(),
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

  void _backToLoginFunc() {
    //ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => const LoginScreen(),
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
          _emailInstruction()
        ],
      );
  Widget _emailInstruction() => Container(
        padding: CustPadding.smallCardPadding,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.errorContainer,
            borderRadius: BorderRadius.circular(getSize(12))),
        child: Row(
          children: [
            Icon(
              Icons.error_outline,
              color: Theme.of(context).colorScheme.outline,
            ),
            spaceWidth10,
            Flexible(
              child: CustText(
                title: AppLocalizations.of(context).forgotPasswordEmailNote,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.outline,
                    fontFamily: FontFamily.familjenGrotesk),
              ),
            ),
          ],
        ),
      );
  Widget _resetPasswordBtn() => CommonElevatedButton(
        btnText: AppLocalizations.of(context).resetPassword,
        topMargin: getVerticalSize(30),
        fontWeight: FontWeight.w700,
        color: Theme.of(context).colorScheme.primary,
        onPressed: _resetPasswordFunc,
      );

  Widget _backToLoginBtn() => CommonElevatedButton(
        style: ElevatedButton.styleFrom(
          surfaceTintColor: Theme.of(context).colorScheme.secondary,
          shadowColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.secondary,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          elevation: 0.0,
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getSize(12)),
          ),
        ),
        btnIcon: Icon(
          Icons.keyboard_backspace_rounded,
          color: Theme.of(context).colorScheme.tertiary,
        ),
        btnText: AppLocalizations.of(context).backToLogin,
        textColor: Theme.of(context).colorScheme.tertiary,
        fontWeight: FontWeight.w700,
        onPressed: _backToLoginFunc,
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
