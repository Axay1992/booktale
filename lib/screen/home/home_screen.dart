import 'package:booktale/constant/custom_pading_constant.dart';
import 'package:booktale/gen/assets.gen.dart';
import 'package:booktale/l10n/app_localizations.dart';
import 'package:booktale/screen/home/widget/drawer.dart';
import 'package:booktale/utils/math_utils.dart';
import 'package:booktale/widget/common/cust_text_widget.dart';
import 'package:booktale/widget/common/loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var passwordController = TextEditingController();
  // Controllers
  var userNameController = TextEditingController();

  // Variables
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _scaffoldKey = GlobalKey<FormState>();
  final FocusNode _node = FocusNode();

  // Notifiers
  final LoadingIndicatorNotifier _indicatorNotifier =
      LoadingIndicatorNotifier();
//-------AppBar------//
  PreferredSizeWidget _appBar() => AppBar(
        toolbarHeight: getVerticalSize(100),
        title: Assets.images.pngImg.booktale.image(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Assets.images.icons.bellIcon.svg(
                  height: getVerticalSize(30),
                  width: getHorizontalSize(30),
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.tertiary,
                      BlendMode.srcIn))),
          IconButton(
              onPressed: () {},
              icon: Assets.images.icons.cartIcon.svg(
                  height: getVerticalSize(30),
                  width: getHorizontalSize(30),
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.tertiary,
                      BlendMode.srcIn))),
          Builder(builder: ((context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Assets.images.icons.menuIcon.svg(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(38),
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.tertiary,
                        BlendMode.srcIn)));
          })),
        ],
      );
//-------Body--------//
  Widget _buildBody() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
          child: SingleChildScrollView(
        padding: CustPadding.screenPadding,
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _searchTextField(),
              _recommendationsSection(),
            ],
          ),
        ),
      )),
    );
  }

//-----Function----//

//-------Wdiget--------//
  Widget _searchTextField() => CupertinoSearchTextField(
        suffixIcon: Icon(
          Icons.filter_list,
          color: Theme.of(context).colorScheme.tertiary,
        ),
        suffixMode: OverlayVisibilityMode.always,
        suffixInsets: EdgeInsets.only(right: getSize(16)),
        onSuffixTap: () {},
        placeholder: "Search Books, Authors...",
        prefixIcon: Row(
          children: [
            Assets.images.icons.searchIcon.svg(
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.tertiary, BlendMode.srcIn),
              height: getVerticalSize(24),
              width: getHorizontalSize(24),
            ),
          ],
        ),
        focusNode: _node,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(getSize(60))),
        ),
        prefixInsets: EdgeInsetsDirectional.fromSTEB(
          getSize(16),
          getSize(16),
          0,
          getSize(16),
        ),
      );

  Widget _recommendationsSection() => Column(
        children: [
          CustText(
            title: AppLocalizations.of(context).recommendations,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bookCard(),
              _bookCard(),
            ],
          )
        ],
      );
  Widget _bookCard() => InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width / 2.4,
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(getSize(6)),
          ),
          child: Column(
            children: [
              Container(
                  padding: CustPadding.cardPaddingMedium,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10.0,
                        offset: const Offset(0, 8),
                      )
                    ],
                  ),
                  child: Assets.images.pngImg.bookImg.image(fit: BoxFit.cover)),
              Container(
                padding: CustPadding.extraSmallCardPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          child: CustText(
                            title: "Connect the Stars",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Assets.images.icons.heartIcon
                              .svg(width: getSize(16), height: getSize(16)),
                        )
                      ],
                    ),
                    CustText(
                      textOverflow: TextOverflow.ellipsis,
                      title: "By Marisa de los Sarsara",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context).colorScheme.outline),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return LoadingIndicator(
      loadingStatusNotifier: _indicatorNotifier,
      child: Scaffold(
        key: _scaffoldKey,
        endDrawerEnableOpenDragGesture: false,
        appBar: _appBar(),
        body: _buildBody(),
        endDrawer: const MyDrawer(),
      ),
    );
  }
}
