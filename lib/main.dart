import 'package:booktale/constant/app_constant.dart';
import 'package:booktale/constant/color_schemes.dart';
import 'package:booktale/constant/string_constant.dart';
import 'package:booktale/l10n/app_localizations.dart';
import 'package:booktale/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BuildContext get getContext => navigatorKey.currentState!.context;
ValueNotifier<ThemeData> themeNotifier = ValueNotifier(
  CustomAppTheme.lightTheme,
);
void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  // static void setLocale(Locale locale) async {
  //   _AppState? state = getContext.findAncestorStateOfType<_AppState>();
  //   state!.setLocale(locale);
  // }

  // static Locale getLocale() {
  //   final state = getContext.findAncestorStateOfType<_AppState>();
  //   return state!.getLocale();
  // }

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // Locale _locale = Locale(SharedPreferencesHelper.instance.getLocale ?? "en");

  // void setLocale(Locale locale) async {
  //   await SharedPreferencesHelper.instance.setLcoale(locale.languageCode);
  //   _locale = locale;
  //   themeNotifier.notifyListeners();
  // }

  // Locale getLocale() {
  //   String? storedLocale = SharedPreferencesHelper.instance.getLocale;
  //   return storedLocale != null
  //       ? AppLocalizations.supportedLocales
  //           .firstWhere((locale) => locale.languageCode == storedLocale)
  //       : const Locale("en");
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: StaticString.whiteGroup,
      //locale: _locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
        // GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('gu'), // Gujarati
      ],
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        useMaterial3: true,
        colorScheme: lightColorScheme,
        scaffoldBackgroundColor: Theme.of(context).colorScheme.surface,
        appBarTheme: AppBarTheme(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      home: const LoginScreen(),
      // home: Consumer<AuthProvider>(builder: (context, auth, child) {
      //   return auth.authModel == null
      //       ? const LoginScreen()
      //       : const NavigationScreen(); // const NavigationScreen();
      // }),
      //theme: theme,
      // routes: {
      //   Routes.loginPage: (context) => const LoginScreen(),
      // },
    );
    // MultiProvider(
    //   providers: const [
    //     // ChangeNotifierProvider<AboutDetailsProvider>(
    //     //   create: (context) => AboutDetailsProvider(),
    //     // ),
    //     // ChangeNotifierProvider<AuthProvider>(
    //     //   create: (context) => AuthProvider(),
    //     // ),
    //     // ChangeNotifierProvider<SiteListProvider>(
    //     //   create: (context) => SiteListProvider(),
    //     // ),
    //     // ChangeNotifierProvider<BookingProvider>(
    //     //   create: (context) => BookingProvider(),
    //     // ),
    //     // ChangeNotifierProvider<InquiryProvider>(
    //     //   create: (context) => InquiryProvider(),
    //     // ),
    //     // ChangeNotifierProvider<ProfileProvider>(
    //     //   create: (context) => ProfileProvider(),
    //     // ),
    //     // ChangeNotifierProvider<FloorPlanProvider>(
    //     //   create: (context) => FloorPlanProvider(),
    //     // ),

    //     // ChangeNotifierProvider<AboutDetailsProvider>.value(
    //     //   value: AboutDetailsProvider(),
    //     // ),
    //     // ChangeNotifierProvider<AuthProvider>.value(
    //     //   value: AuthProvider(),
    //     // ),
    //     // ChangeNotifierProvider<SiteListProvider>.value(
    //     //   value: SiteListProvider(),
    //     // ),
    //     // ChangeNotifierProvider<BookingProvider>.value(
    //     //   value: BookingProvider(),
    //     // ),
    //     // ChangeNotifierProvider<InquiryProvider>.value(
    //     //   value: InquiryProvider(),
    //     // ),
    //     // ChangeNotifierProvider<ProfileProvider>.value(
    //     //   value: ProfileProvider(),
    //     // ),
    //     // ChangeNotifierProvider<FloorPlanProvider>.value(
    //     //   value: FloorPlanProvider(),
    //     // ),
    //   ],
    //   child: ValueListenableBuilder(
    //       valueListenable: themeNotifier,
    //       builder: (context, theme, child) {
    //         return MaterialApp(
    //           navigatorKey: navigatorKey,
    //           debugShowCheckedModeBanner: false,
    //           title: StaticString.whiteGroup,
    //           locale: _locale,
    //           localizationsDelegates: const [
    //             AppLocalizations.delegate,
    //             GlobalMaterialLocalizations.delegate,
    //             GlobalWidgetsLocalizations.delegate,
    //             GlobalCupertinoLocalizations.delegate,
    //           ],
    //           supportedLocales: const [
    //             Locale('en'), // English
    //             Locale('gu'), // Gujarati
    //           ],
    //           home: const LoginScreen(),
    //           // home: Consumer<AuthProvider>(builder: (context, auth, child) {
    //           //   return auth.authModel == null
    //           //       ? const LoginScreen()
    //           //       : const NavigationScreen(); // const NavigationScreen();
    //           // }),
    //           theme: theme,
    //           // routes: {
    //           //   Routes.loginPage: (context) => const LoginScreen(),
    //           // },
    //         );
    //       }),
    // );
  }

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: const MyHomePage(title: 'Flutter Demo Home Page'),
  //   );
  // }
}


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
//}
