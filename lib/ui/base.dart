import 'package:MyPortfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widget/custom_app_bar.dart';


class Base extends StatefulWidget {
  final StatefulNavigationShell shell;

  const Base({
    super.key,
    required this.shell
  });

  @override
  State<StatefulWidget> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  final GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SliderDrawer(
          key: _key,
          slideDirection: SlideDirection.RIGHT_TO_LEFT,
          sliderOpenSize: 300,
          appBar: CustomAppBar(
            isMobile: ResponsiveBreakpoints.of(context).isMobile,
            currentIndex: widget.shell.currentIndex,
            onActionTap: () => _key.currentState!.isDrawerOpen ? _key.currentState!.closeSlider() : _key.currentState!.openSlider(),
            onMenuTap: (index) => widget.shell.goBranch(index),
            onLoginTap: () => context.go('/login'),
          ),
          slider: Container(color: Colors.red),
          child: widget.shell
      ),
    );
  }
}