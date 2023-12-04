
import 'package:flutter/material.dart';

class ThemeLight{

  Color colorPrimary = Color(0xffffffff);
  Color colorFill = Color(0xffF7F9FA);
  Color colorPrimaryLight = Color(0xff8797BA);
  Color colorGreyPrimary = Color(0xff847F71);

  /*Color colorGradientPrimary = Color(0xff262158);
  Color colorGradientSecondary = Color(0xff4F78AE);*/

  String primaryFont = 'Poppins';
  //String secondaryFont = 'PTSerif';

  LinearGradient colorGradientBlue = LinearGradient(colors: [
    Color(0xff262158),
    Color(0xff4F78AE)
  ]);

  LinearGradient colorGradient90Blue = LinearGradient(colors: [
    Color(0xff4F78AE),
    Color(0xff262158)
  ], begin: Alignment.topCenter,
    end: Alignment.bottomCenter, );

  LinearGradient colorGradientRightBlue = LinearGradient(colors: [
    Color(0xff4F78AE),
    Color(0xff262158)
  ], begin: Alignment.centerLeft,
    end: Alignment.centerRight, );

  LinearGradient colorGradientLeftBlueLight = LinearGradient(colors: [
    Color(0xff4F78AE),
    Color(0xff262158)
  ], begin: Alignment.centerRight,
    end: Alignment.centerLeft, );

  LinearGradient colorGradientGoldSecondary = LinearGradient(colors: [
    Color(0xffE8BD70),
    Color(0xffEDD185)
  ], begin: Alignment.topCenter,
    end: Alignment.bottomCenter,);

  LinearGradient colorGradientGoldPrimary = LinearGradient(colors: [
    Color(0xffDFC799),
    Color(0xffFFFDF5)
  ]);

  LinearGradient colorGradientLeftGoldDark = LinearGradient(colors: [
    Color(0xffE8BD70),
    Color(0xffEDD084)
  ], begin: Alignment.centerLeft,
    end: Alignment.centerRight,);

  Color colorGoldPrimary = Color(0xffF5ECD8);
  Color colorGold = Color(0xffCDA350);
  Color colorPrimaryBlue = Color(0xff4F78AE);
  Color colorSecondaryBlue = Color(0xff272C64);
  Color colorGoldSecondary = Color(0xffE5B73C);
  Color colorDescriptions = Color(0xff5E6F8D);
  
  Color shadowColor = Color(0xff427FA5).withOpacity(0.095);


  static final light = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      /*systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark, statusBarBrightness: Brightness.dark),
      brightness: Brightness.dark,
      backwardsCompatibility: false,*/
      backgroundColor: ThemeLight().colorPrimary,
      //backwardsCompatibility: false,
      elevation: 0.0,
      actionsIconTheme: IconThemeData(
        color: Colors.black,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: ThemeData.light().textTheme.apply(
      fontFamily: 'Poppins',
    ),
    primaryTextTheme: ThemeData.light().textTheme.apply(
      fontFamily: 'Poppins',
    ),

    /*
    textTheme: ThemeData.light().textTheme.apply(
      fontFamily: 'NunitoSans',
    ),*/
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            textStyle: TextStyle(
                fontFamily: 'Poppins'
            )
        )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
                fontFamily: 'Poppins'
            )
        )
    ),
    colorScheme: ColorScheme.light(
      primary: ThemeLight().colorGold,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ThemeLight().colorFill,
      labelStyle: TextStyle(
        fontSize: 16.0,
      ),
      border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.0)),
    ),
    //brightness: Brightness.dark,
    backgroundColor: ThemeLight().colorPrimary,
    primaryColor: Colors.blue,
    accentColor: Colors.lightBlueAccent,
  );
}