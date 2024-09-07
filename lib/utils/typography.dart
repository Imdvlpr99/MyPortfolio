import 'dart:ui';

import 'package:MyPortfolio/utils/constants.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle regular16Grey() {
  return GoogleFonts.poppins().copyWith(
    color: gray,
    fontSize: 16,
    fontWeight: FontWeight.w400
  );
}

TextStyle regular16White() {
  return GoogleFonts.poppins().copyWith(
    color: white,
    fontSize: 16,
    fontWeight: FontWeight.w400
  );
}

TextStyle semiBold32White() {
  return GoogleFonts.poppins().copyWith(
    color: white,
    fontSize: 32,
    fontWeight: FontWeight.w600
  );
}

TextStyle semiBold32Purple() {
  return GoogleFonts.poppins().copyWith(
      color: purple,
      fontSize: 32,
      fontWeight: FontWeight.w600
  );
}