import 'package:MyPortfolio/ui/base_mobile.dart';
import 'package:MyPortfolio/ui/base_web.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../utils/constants.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<StatefulWidget> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ResponsiveBreakpoints.of(context).isMobile ?
          const BaseMobile() :
          const BaseWeb(),
        ),
      )
    );
  }
}