import 'package:MyPortfolio/screen/base.dart';
import 'package:MyPortfolio/utils/constants.dart';
import 'package:MyPortfolio/widget/custom_page_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/**
 * Created by Imdvlpr_
 */

class Splash extends StatefulWidget {
  const Splash({super.key});
  
  @override
  State<StatefulWidget> createState() => _SplashState();
  
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          CustomPageRoute(
              child: const Base(),
              direction: AxisDirection.up
          )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Lottie.asset(
            'assets/loading.json',
            width:  200,
            height: 200
        ),
      ),
    );
  }
  
}