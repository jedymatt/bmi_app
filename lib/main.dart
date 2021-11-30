import 'package:bmi_app/core/constants.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        backgroundColor: kScaffoldBackgroundColor,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: kScaffoldBackgroundColor,
          elevation: 15.0,
          toolbarHeight: kToolbarHeight * 1.10,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
