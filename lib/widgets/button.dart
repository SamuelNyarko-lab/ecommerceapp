import 'package:ecommerceapp/utils/colors.dart';
import 'package:ecommerceapp/utils/utils.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final Function() onSubmit;
  final String buttonText;
  const SubmitButton(
      {super.key, required this.onSubmit, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: circularBorder(
          30,
        ),
      ),
      height: 45,
      minWidth: deviceWidth(context) * 0.45,
      color: Colors.white,
      child: Text(
        buttonText,
        style: TextStyle(
          color: mainAppColor,
          fontSize: 17,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
