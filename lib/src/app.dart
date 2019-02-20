import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:picturedictionary/src/ui/screens/search.dart';
import 'package:picturedictionary/src/ui/theme/theme.dart';
import 'package:flutter_villains/villain.dart';
import './ui/screens/browse.dart';
import './ui/screens/auth.dart';
import './ui/screens/search.dart';

final SystemUiOverlayStyle uiStyle = SystemUiOverlayStyle(
  statusBarIconBrightness: Brightness.dark,
  statusBarColor: Colors.grey[100],
  systemNavigationBarColor: Colors.white,
  systemNavigationBarIconBrightness: Brightness.dark,
  systemNavigationBarDividerColor: Colors.black26,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(uiStyle);
    return MaterialApp(
      navigatorObservers: [VillainTransitionObserver()],
      debugShowCheckedModeBanner: false,
      theme: MyTheme,
      title: 'P Dictionary',
      home: Auth(),
      routes: {
        '/home': (context) => Browse(title: 'Home'),
        '/search': (context) => Search(),
      },
    );
  }
}
