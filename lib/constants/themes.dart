import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

TextTheme textStyle = TextTheme(
  headline1: GoogleFonts.robotoMono(
      fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.robotoMono(
      fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3: GoogleFonts.robotoMono(fontSize: 48, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.robotoMono(
      fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5: GoogleFonts.robotoMono(fontSize: 24, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.robotoMono(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.robotoMono(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.robotoMono(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: kGreyColor),
  bodyText1: GoogleFonts.rubik(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.rubik(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  button: GoogleFonts.rubik(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.rubik(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.rubik(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

const kPrimaryColor = Color(0xFFF7A76C);
const kSecondaryColor = Color(0xFFC3FF99);
const kWhiteColor = Color(0xFFFEFBF6);
const kRedColor = Color(0xFFEC7272);
const kGreyColor = Color(0xFFCFD2CF);
