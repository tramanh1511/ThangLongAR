// ignore_for_file: depend_on_referenced_packages

import 'package:ar_app/l10n/l10n.dart';
import 'package:ar_app/ui/screens/Home/News.dart';
import 'package:ar_app/ui/screens/Home/home.dart';
import 'package:ar_app/ui/screens/Home/introduction_details.dart';
import 'package:ar_app/ui/screens/Home/tour.dart';
import 'package:ar_app/ui/screens/Intro/intro_page.dart';
import 'package:ar_app/ui/screens/map/controller.dart';
import 'package:ar_app/ui/screens/map/webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Giải mã Hoàng Thành Thăng Long',
        theme:  ThemeData(  
          primaryColor: const Color(0xFFC07F00),
        ),
        supportedLocales: L10n.all,
        locale: const Locale('vi'),
        localizationsDelegates: const [
          AppLocalizations.delegate, 
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        routes: {
          '/': (context) => const IntroPage(),
          '/home': (context) => const HomeScreen(),
          '/home/intro': (context) => const IntroDetail(),
          '/home/news': (context) => const NewsDetail(),
          '/home/tour': (context) => const TourDetail(),
          '/home/webview': (context) => const WebView(),
          '/home/webviewc/container': (context) => const WebViewContainer(),
          // '/home/destination': (context) => const DestinationScreen(),
        },
        // home: const IntroPage(),
    );
  }
}
