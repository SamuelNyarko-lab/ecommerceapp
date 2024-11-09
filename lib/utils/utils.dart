import 'package:flutter/material.dart';

Widget verticalSpacing(double value) => SizedBox(height: value);

Widget horizontalSpacing(double value) => SizedBox(width: value);

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

EdgeInsets padding(double value) => EdgeInsets.all(value);
BorderRadius circularBorder(double value) => BorderRadius.all(Radius.circular(
      value,
    ));
// double prefWidth(double value) {
//    BuildContext context;
//   return deviceWidth(context) * value;
// }
//double prefHeight(double value) => defaultHeight(BuildContext context)*value;

//Styles
TextStyle boldText = const TextStyle(fontWeight: FontWeight.bold);

//Colors and Themes

Color mainAppColor = const Color.fromRGBO(49, 138, 59, 1);

ThemeData mainThemeData = ThemeData(
  // colorScheme:  ColorScheme(
  //   background: Colors.white,
  //   brightness: Brightness.light,
  //   error: Colors.red,
  //   onBackground: Colors.white,
  //   onError: Colors.red,
  //   onPrimary: mainAppColor,
  //   onSecondary: mainAppColor,
  //   onSurface: Colors.white,
  //   primary: Colors.white,
  //   secondary: Colors.white,
  //   surface: Colors.white,
  // ),
  primaryColor: mainAppColor,
);
