/*
* File : App Theme
* Version : 1.0.0
* */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Text Themes
  static final TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 102, color: Color(0xff4a4c4f))),
    headline2: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 64, color: Color(0xff4a4c4f))),
    headline3: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 51, color: Color(0xff4a4c4f))),
    headline4: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 36, color: Color(0xff4a4c4f))),
    headline5: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 25, color: Color(0xff4a4c4f))),
    headline6: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 18, color: Color(0xff4a4c4f))),
    subtitle1: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 17, color: Color(0xff4a4c4f))),
    subtitle2: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 15, color: Color(0xff4a4c4f))),
    bodyText1: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 16, color: Color(0xff4a4c4f))),
    bodyText2: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 14, color: Color(0xff4a4c4f))),
    button: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 15, color: Color(0xff4a4c4f))),
    caption: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 13, color: Color(0xff4a4c4f))),
    overline: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(fontSize: 11, color: Color(0xff4a4c4f))),
  );

  //Theme Data
  static final ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xff3d63ff),
    canvasColor: Colors.transparent,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Color(0xffffffff),
    appBarTheme: AppBarTheme(
      textTheme: textTheme,
      actionsIconTheme: IconThemeData(
        color: Color(0xff495057),
      ),
      color: Color(0xffffffff),
      iconTheme: IconThemeData(color: Color(0xff495057), size: 24),
    ),
    navigationRailTheme: NavigationRailThemeData(
        selectedIconTheme:
            IconThemeData(color: Color(0xff3d63ff), opacity: 1, size: 24),
        unselectedIconTheme:
            IconThemeData(color: Color(0xff495057), opacity: 1, size: 24),
        backgroundColor: Color(0xffffffff),
        elevation: 3,
        selectedLabelTextStyle: TextStyle(color: Color(0xff3d63ff)),
        unselectedLabelTextStyle: TextStyle(color: Color(0xff495057))),
    colorScheme: ColorScheme.light(
        primary: Color(0xff3d63ff),
        onPrimary: Colors.white,
        primaryVariant: Color(0xff0055ff),
        secondary: Color(0xff495057),
        secondaryVariant: Color(0xff3cd278),
        onSecondary: Colors.white,
        surface: Color(0xffe2e7f1),
        background: Color(0xfff3f4f7),
        onBackground: Color(0xff495057)),
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.4),
      elevation: 1,
      margin: EdgeInsets.all(0),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(fontSize: 15, color: Color(0xaa495057)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Color(0xff3d63ff)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Colors.black54),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.black54)),
    ),
    splashColor: Colors.white.withAlpha(100),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: textTheme,
    indicatorColor: Colors.white,
    disabledColor: Color(0xffdcc7ff),
    highlightColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color(0xff3d63ff),
        splashColor: Colors.white.withAlpha(100),
        highlightElevation: 8,
        elevation: 4,
        focusColor: Color(0xff3d63ff),
        hoverColor: Color(0xff3d63ff),
        foregroundColor: Colors.white),
    dividerColor: Color(0xffd1d1d1),
    errorColor: Color(0xfff0323c),
    cardColor: Colors.white,
    accentColor: Color(0xff3d63ff),
    popupMenuTheme: PopupMenuThemeData(
      color: Color(0xffffffff),
      textStyle:
          textTheme.bodyText2.merge(TextStyle(color: Color(0xff495057))),
    ),
    bottomAppBarTheme:
        BottomAppBarTheme(color: Color(0xffffffff), elevation: 2),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Color(0xff495057),
      labelColor: Color(0xff3d63ff),
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Color(0xff3d63ff), width: 2.0),
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: Color(0xff3d63ff),
      inactiveTrackColor: Color(0xff3d63ff).withAlpha(140),
      trackShape: RoundedRectSliderTrackShape(),
      trackHeight: 4.0,
      thumbColor: Color(0xff3d63ff),
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
      tickMarkShape: RoundSliderTickMarkShape(),
      inactiveTickMarkColor: Colors.red[100],
      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
