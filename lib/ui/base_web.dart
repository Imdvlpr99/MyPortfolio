import 'package:MyPortfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class BaseWeb extends StatefulWidget {
  const BaseWeb({super.key});

  @override
  State<StatefulWidget> createState() => _BaseWebState();
}

class _BaseWebState extends State<BaseWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
    );
  }

}