import 'package:flutter/material.dart';
import 'package:mido_app/view/splash/splash.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Nectar',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
