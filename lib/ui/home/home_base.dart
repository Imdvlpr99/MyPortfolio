import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'home_mobile.dart';
import 'home_web.dart';

class HomeBase extends StatelessWidget {
  const HomeBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ResponsiveBreakpoints.of(context).isMobile ? const HomeMobile() :
        ResponsiveBreakpoints.of(context).isTablet ? const HomeWeb() :
        Container(),
      ),
    );
  }

}