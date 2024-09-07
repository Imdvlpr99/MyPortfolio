import 'package:MyPortfolio/ui/profile_badge.dart';
import 'package:MyPortfolio/utils/constants.dart';
import 'package:MyPortfolio/utils/typography.dart';
import 'package:flutter/material.dart';

class BaseMobile extends StatefulWidget {
  const BaseMobile({super.key});

  @override
  State<StatefulWidget> createState() => _BaseMobileState();
}

class _BaseMobileState extends State<BaseMobile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false, scrollbars: false),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0), // Add padding for top, bottom, and sides
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Agung Jaya is a ',
                    style: semiBold32White(),
                    children: [
                      TextSpan(
                        text: 'Android Developer ',
                        style: semiBold32Purple(),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: semiBold32White(),
                      ),
                      TextSpan(
                        text: 'Flutter Developer',
                        style: semiBold32Purple(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'He crafts awesome and responsive Android and Flutter apps where technologies meet creativity.',
                  style: regular16Grey(),
                ),
                const SizedBox(height: 25),
                const ProfileBadge(),
              ],
            ),
          ),
        ),
      ),
    );
  }


}