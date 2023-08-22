import 'package:booktale/constant/common_sizebox.dart';
import 'package:booktale/constant/custom_pading_constant.dart';
import 'package:booktale/l10n/app_localizations.dart';
import 'package:booktale/main.dart';
import 'package:booktale/screen/auth/login_screen.dart';
import 'package:booktale/utils/math_utils.dart';
import 'package:booktale/widget/common/common_button_widget.dart';
import 'package:booktale/widget/common/cust_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  //--- Widget---//
  Widget _drawerTitle() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () => Navigator.of(getContext).pop(),
                  icon: Assets.images.icons.menuIcon.svg(
                      height: getVerticalSize(36),
                      width: getHorizontalSize(36),
                      colorFilter: ColorFilter.mode(
                          Theme.of(getContext).colorScheme.tertiary,
                          BlendMode.srcIn))),
              CustText(
                title: AppLocalizations.of(getContext).menu,
                style: Theme.of(getContext)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
              )
            ],
          ),
          IconButton(
              onPressed: () => Navigator.of(getContext).pop(),
              icon: Icon(
                Icons.close,
                color: Theme.of(getContext).colorScheme.tertiary,
              )),
        ],
      );

  Widget _drawerOption() => Padding(
        padding: CustPadding.smallCardPadding,
        child: Column(
          children: [
            ListTile(
                // onTap: () =>
                //     Navigator.of(context).pushNamed(ProfileScreen.route),
                contentPadding: const EdgeInsets.only(right: 1),
                horizontalTitleGap: 6,
                leading: Assets.images.icons.profileIcon.svg(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(24),
                    colorFilter: ColorFilter.mode(
                        Theme.of(getContext).colorScheme.tertiary,
                        BlendMode.srcIn)),
                title: CustText(
                  title: AppLocalizations.of(getContext).myProfile,
                  style: Theme.of(getContext).textTheme.titleMedium?.copyWith(
                        color: Theme.of(getContext).colorScheme.tertiary,
                      ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                )),
            const Divider(),
            ListTile(
                // onTap: () =>
                //     Navigator.of(context).pushNamed(ProfileScreen.route),
                contentPadding: const EdgeInsets.only(right: 1),
                horizontalTitleGap: 6,
                leading: Assets.images.icons.homeIcon.svg(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(24),
                    colorFilter: ColorFilter.mode(
                        Theme.of(getContext).colorScheme.tertiary,
                        BlendMode.srcIn)),
                title: CustText(
                  title: AppLocalizations.of(getContext).home,
                  style: Theme.of(getContext).textTheme.titleMedium?.copyWith(
                        color: Theme.of(getContext).colorScheme.tertiary,
                      ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                )),
            const Divider(),
            ListTile(
                // onTap: () =>
                //     Navigator.of(context).pushNamed(ProfileScreen.route),
                contentPadding: const EdgeInsets.only(right: 1),
                horizontalTitleGap: 6,
                leading: Assets.images.icons.categoriesIcon.svg(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(24),
                    colorFilter: ColorFilter.mode(
                        Theme.of(getContext).colorScheme.tertiary,
                        BlendMode.srcIn)),
                title: CustText(
                  title: AppLocalizations.of(getContext).categories,
                  style: Theme.of(getContext).textTheme.titleMedium?.copyWith(
                        color: Theme.of(getContext).colorScheme.tertiary,
                      ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                )),
            const Divider(),
            ListTile(
                // onTap: () =>
                //     Navigator.of(context).pushNamed(ProfileScreen.route),
                contentPadding: const EdgeInsets.only(right: 1),
                horizontalTitleGap: 6,
                leading: Assets.images.icons.trendinIcon.svg(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(24),
                    colorFilter: ColorFilter.mode(
                        Theme.of(getContext).colorScheme.tertiary,
                        BlendMode.srcIn)),
                title: CustText(
                  title: AppLocalizations.of(getContext).trending,
                  style: Theme.of(getContext).textTheme.titleMedium?.copyWith(
                        color: Theme.of(getContext).colorScheme.tertiary,
                      ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                )),
            const Divider(),
            ListTile(
                // onTap: () =>
                //     Navigator.of(context).pushNamed(ProfileScreen.route),
                contentPadding: const EdgeInsets.only(right: 1),
                horizontalTitleGap: 6,
                leading: Assets.images.icons.cartIcon.svg(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(24),
                    colorFilter: ColorFilter.mode(
                        Theme.of(getContext).colorScheme.tertiary,
                        BlendMode.srcIn)),
                title: CustText(
                  title: AppLocalizations.of(getContext).cart,
                  style: Theme.of(getContext).textTheme.titleMedium?.copyWith(
                        color: Theme.of(getContext).colorScheme.tertiary,
                      ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                )),
            const Divider(),
            ListTile(
                // onTap: () =>
                //     Navigator.of(context).pushNamed(ProfileScreen.route),
                contentPadding: const EdgeInsets.only(right: 1),
                horizontalTitleGap: 6,
                leading: Assets.images.icons.profileIcon.svg(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(24),
                    colorFilter: ColorFilter.mode(
                        Theme.of(getContext).colorScheme.tertiary,
                        BlendMode.srcIn)),
                title: CustText(
                  title: AppLocalizations.of(getContext).myOrders,
                  style: Theme.of(getContext).textTheme.titleMedium?.copyWith(
                        color: Theme.of(getContext).colorScheme.tertiary,
                      ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                )),
            const Divider(),
            ListTile(
                // onTap: () =>
                //     Navigator.of(context).pushNamed(ProfileScreen.route),
                contentPadding: const EdgeInsets.only(right: 1),
                horizontalTitleGap: 6,
                leading: Assets.images.icons.heartIcon.svg(
                    height: getVerticalSize(20),
                    width: getHorizontalSize(20),
                    colorFilter: ColorFilter.mode(
                        Theme.of(getContext).colorScheme.tertiary,
                        BlendMode.srcIn)),
                title: CustText(
                  title: AppLocalizations.of(getContext).wishlist,
                  style: Theme.of(getContext).textTheme.titleMedium?.copyWith(
                        color: Theme.of(getContext).colorScheme.tertiary,
                      ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                )),
            const Divider(),
            _logoutBtn()
          ],
        ),
      );
  Widget _logoutBtn() => Padding(
        padding: CustPadding.smallCardPadding,
        child: CommonElevatedButton(
          style: ElevatedButton.styleFrom(
            surfaceTintColor: Theme.of(getContext).colorScheme.secondary,
            shadowColor: Colors.transparent,
            foregroundColor: Theme.of(getContext).colorScheme.secondary,
            backgroundColor: Theme.of(getContext).colorScheme.secondary,
            elevation: 0.0,
            side: BorderSide(
              color: Theme.of(getContext).colorScheme.error,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(getSize(8)),
            ),
          ),
          btnText: AppLocalizations.of(getContext).logout,
          decoration: TextDecoration.underline,
          decorationColor: Theme.of(getContext).colorScheme.error,
          textColor: Theme.of(getContext).colorScheme.error,
          fontWeight: FontWeight.w700,
          onPressed: _logoutFunc,
        ),
      );

//------Function------//
  void _logoutFunc() {
    //ignore: use_build_context_synchronously
    Navigator.of(getContext).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Padding(
          padding: CustPadding.smallCardPadding,
          child: Column(
            children: [
              spaceHeight40,
              _drawerTitle(),
              spaceHeight20,
              _drawerOption()
            ],
          ),
        ),
      ),
    );
  }
}
