
import 'package:MyPortfolio/utils/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

const Color mainColor = Color(0xFF282C33);
const Color white = Color(0xFFFFFFFF);
const Color gray = Color(0xFFABB2BF);
const Color purple = Color(0xFFC778DD);
const Color darkGray = Color(0xFF3B4049);

List<Widget> socialList = [
  InkWell(
    onTap: () => _launchUrl(Uri.parse('https://github.com/Imdvlpr99')),
    child: Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: SvgPicture.asset(
        'assets/github.svg'
      ),
    ),
  ),
  InkWell(
    onTap: () => _launchUrl(Uri.parse('https://linkedin.com/in/agung-jaya')),
    child: Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(5)
      ),
      child: SvgPicture.asset(
          'assets/linkedin.svg'
      ),
    ),
  ),
  InkWell(
    onTap: () => _launchUrl(Uri.parse('https://www.instagram.com/im.dvlpr_/')),
    child: Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(5)
      ),
      child: SvgPicture.asset(
          'assets/instagram.svg'
      ),
    ),
  ),
  InkWell(
    onTap: () => _launchUrl(Uri(
      scheme: 'mailto',
      path: 'imdvlpr.agency@gmail.com',
    )),
    child: Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(5)
      ),
      child: SvgPicture.asset(
          'assets/google.svg'
      ),
    ),
  )
];

List<String> headerMenu = [
  'Home',
  'Works',
  'About Me'
];

RichText headerText = RichText(
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
);

Text subHeaderText = Text(
  'He crafts awesome and responsive Android and Flutter apps where technologies meet creativity.',
  style: regular16Grey(),
);

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}