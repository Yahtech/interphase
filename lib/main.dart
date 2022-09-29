import 'package:flutter/material.dart';
import 'package:interphase/pages/auto_screen_login.dart';
import 'package:interphase/pages/bottomnav/article.dart';
import 'package:interphase/pages/bottomnav/home.dart';
import 'package:interphase/pages/bottomnav/profile.dart';
import 'package:interphase/pages/home_screen_loading.dart';
import 'package:interphase/pages/onboarding_screen.dart';
import 'package:interphase/widgets/note_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const OnboardingScreen());
  }
}
