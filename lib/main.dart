import 'package:MyPortfolio/screen/splash.dart';
import 'package:MyPortfolio/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'utils/firebase_options.dart';

///  Created by Imdvlpr_

void main() {
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 500, name: MOBILE),
          const Breakpoint(start: 500, end: 1100, name: TABLET),
          const Breakpoint(start: 1100, end: double.infinity, name: DESKTOP),
        ],
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: purple),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}
