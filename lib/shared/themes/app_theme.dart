import 'dart:ui';

import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //colors
  static const Color black = Color(0xFF000000);
  static const Color greyL = Color(0xFFC5C5C5);
  static const Color grey1 = Color(0xFF979597);
  static const Color grey2 = Color(0xFF8B8B8B);
  static const Color grey3 = Color(0xFF707070);
  static const Color grey4 = Color(0xFFCED3DE);
  static const Color grey5 = Color(0xFF8F9BB3);
  static const Color grey6 = Color(0xFFEDF1F7);
  static const Color grey7 = Color(0xFF969696);
  static const Color grey8 = Color(0xFFD1D1D1);
  static const Color mainGreen = Color(0xFF9ED015);
  static const Color mainGreen2 = Color(0xFF618403);
  static const Color mainGreen3 = Color(0xFF7FA90C);
  static const Color mainGreen4 = Color(0xFF769E0A);
  static const Color scaffoldBg = Color(0xFFF8F8F8);
  static const Color blueTitle = Color(0xFF222B45);

//gradient
  static LinearGradient buttonGrad() => const LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [mainGreen, mainGreen2],
      );

  static LinearGradient walletGrad() => const LinearGradient(
        end: Alignment.topCenter,
        begin: Alignment.bottomCenter,
        colors: [mainGreen, mainGreen3],
      );

  static LinearGradient appGrad() => LinearGradient(
        end: Alignment.centerRight,
        begin: Alignment.centerLeft,
        colors: [
          mainGreen,
          mainGreen4,
        ],
      );

  //text styles
  static TextStyle titleStyle() => GoogleFonts.montserrat(
        fontSize: 21,
        fontWeight: FontWeight.w700,
      );

  static TextStyle titleStyle3() => GoogleFonts.montserrat(
        fontSize: 15,
        fontWeight: FontWeight.w700,
      );

  static TextStyle normalStyle() => GoogleFonts.montserrat(
        fontSize: 14,
      );

  static TextStyle normalStyle2() =>
      GoogleFonts.montserrat(fontSize: 10, fontWeight: FontWeight.w500);

  static TextStyle normalStyle3() => GoogleFonts.montserrat(
        fontSize: 12,
      );

  static TextStyle normalStyle4() =>
      GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600);

  static TextStyle weekStyle() => GoogleFonts.montserrat(
      fontSize: 13, color: grey5, fontWeight: FontWeight.w500);
  static TextStyle hintStyle() => GoogleFonts.montserrat(
        color: grey1,
        fontSize: 13,
        fontWeight: FontWeight.w400,
      );

  static TextStyle hintStyle2 = GoogleFonts.montserrat(
    color: grey2,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static TextStyle fieldLabelStyle = GoogleFonts.montserrat(
    color: grey7,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle butText() => GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  static TextStyle calendarCardTitle() => GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      );
  static TextStyle calendarCardSelectedTitle() => GoogleFonts.montserrat(
        color: mainGreen,
        fontSize: 26,
        fontWeight: FontWeight.w700,
      );

  static TextStyle titleStyle2() => GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      );

  static TextStyle selectedNavTitleStyle() => GoogleFonts.montserrat(
        fontSize: 8,
        fontWeight: FontWeight.w600,
        color: mainGreen,
      );
  static TextStyle unselectedNavTitleStyle() => GoogleFonts.montserrat(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: grey3,
      );

  //decoration
  static BoxDecoration fieldDecoration() => BoxDecoration(
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
            color: Color.fromRGBO(24, 39, 75, 0.12),
            offset: Offset(0, 8),
            blurRadius: 16,
            spreadRadius: -6)
      ],
      borderRadius: BorderRadius.circular(32));

  static BoxDecoration fieldDecoration2() => BoxDecoration(
        border: Border.all(color: Color(0xFFEDEDED)),
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFF2F2F2),
      );
  static BoxDecoration fieldDecoration3() => BoxDecoration(
        border: Border.all(color: grey6),
        borderRadius: BorderRadius.circular(8),
      );

  static BoxDecoration dropdownDecoration() => BoxDecoration(
        border: Border.all(color: grey8),
        borderRadius: BorderRadius.circular(7),
      );

  static BoxDecoration gradButtonDecoration() => BoxDecoration(
      gradient: buttonGrad(),
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(149, 173, 254, 0.3),
          offset: Offset(0, 10),
          blurRadius: 22,
        )
      ],
      borderRadius: BorderRadius.circular(32));

  static BoxDecoration coloredButtonDecoration() => BoxDecoration(
      color: AppTheme.mainGreen, borderRadius: BorderRadius.circular(7));

  static BoxDecoration statusBoxDecoration() => BoxDecoration(
      color: AppTheme.mainGreen.withOpacity(0.1),
      borderRadius: BorderRadius.circular(6));

  static BoxDecoration iGradButtonDecoration() => BoxDecoration(
      border: Border.all(color: mainGreen),
      borderRadius: BorderRadius.circular(32));

  static BoxDecoration calendarCardDecoration() => BoxDecoration(
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            offset: Offset(0, 20),
            blurRadius: 21,
            spreadRadius: 0)
      ],
      borderRadius: BorderRadius.circular(12));

  static BoxDecoration mainCardDecoration() => BoxDecoration(
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0, 10),
            blurRadius: 40,
            spreadRadius: 0)
      ],
      borderRadius: BorderRadius.circular(12));

  static BoxDecoration availTimeCardDecoration() => BoxDecoration(
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            offset: Offset(0, 3),
            blurRadius: 30,
            spreadRadius: 0)
      ],
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)));

  static BoxDecoration walletCardDecoration() => BoxDecoration(
      gradient: walletGrad(),
      boxShadow: const [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0, -5),
            blurRadius: 20,
            spreadRadius: 0)
      ],
      borderRadius: BorderRadius.circular(12));

  static BoxDecoration chevronContainerDecoration() => BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: grey4.withOpacity(0.5),
      ),
      borderRadius: BorderRadius.circular(7));
}
