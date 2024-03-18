import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sider_alhadjar/HomePage.dart';
import 'package:sider_alhadjar/MediaAct.dart';
import 'package:sider_alhadjar/Products.dart';
import 'package:sider_alhadjar/settings/Language.dart';
import 'package:sider_alhadjar/PageNavigatior.dart';
import 'package:sider_alhadjar/Provider/provider.dart';
import 'package:sider_alhadjar/settings/mode.dart';
import 'package:sider_alhadjar/settings/settings.dart';
import 'generated/l10n.dart';

void main() async {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? savedLanguageCode = prefs.getString('languageCode');
  FlutterNativeSplash.remove();
  runApp(
    MyApp(
      key: MyApp.myAppStateKey,
      savedLanguageCode: savedLanguageCode,
    ),
  );
}

class MyApp extends StatefulWidget {
  static final GlobalKey<_MyAppState> myAppStateKey = GlobalKey<_MyAppState>();

  final String? savedLanguageCode;

  const MyApp({Key? key, this.savedLanguageCode}) : super(key: key);

  static void changeLanguage(String languageCode) {
    myAppStateKey.currentState?._changeLanguage(languageCode);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ScrollController _homeScrollController = ScrollController();
  final ScrollController _mediaActScrollController = ScrollController();
  final ScrollController _productsScrollController = ScrollController();
  Locale _appLocale = const Locale('fr', '');

  void _changeLanguage(String languageCode) async {
    print("Changing language to $languageCode");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', languageCode);

    setState(() {
      _appLocale = Locale(languageCode, '');
    });
  }

  Future<void> _loadSavedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedLanguageCode = prefs.getString('languageCode');

    if (savedLanguageCode != null) {
      setState(() {
        _appLocale = Locale(savedLanguageCode, '');
      });
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.savedLanguageCode != null) {
      _loadSavedLanguage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UiProvider()..init(),
      child: Consumer<UiProvider>(
        builder: (contextn, UiProvider notifier, child) {
          return MaterialApp(
            themeMode: notifier.isDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: notifier.isDark ? notifier.darkTheme : notifier.lightTheme,
            locale: _appLocale,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            home: PageNavigation(),
            routes: {
              "accueil": (context) => HomePage(
                    HomeScrollController: _homeScrollController,
                  ),
              "MediaAct": (context) =>
                  MediaAct(mediaActScrollController: _mediaActScrollController),
              "products": (context) => Products(
                    productsScrollController: _productsScrollController,
                  ),
              "Settings": (context) => const settings(),
              "Language": (context) => const Language(),
              "mode": (context) => const Mode(),
              "NavigationPage": (context) => PageNavigation(),
            },
          );
        },
      ),
    );
  }
}
