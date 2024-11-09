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

Border simpleBorder = Border.all();
