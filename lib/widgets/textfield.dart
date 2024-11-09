import 'package:ecommerceapp/utils/colors.dart';
import 'package:ecommerceapp/utils/utils.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final FormFieldValidator validator;
  final bool hideValue;
  final String hintText;
  final TextEditingController textEditingController;
  const TextInputField({
    super.key,
    required this.validator,
    required this.hintText,
    this.hideValue = false,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: padding(10),
      margin: padding(10),
      height: 50,
      child: TextFormField(
        controller: textEditingController,
        obscureText: hideValue,
        validator: (value) {
          return validator(value);
        },
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(
            color: mainAppColor,
            fontFamily: 'Poppins',
          ),
          filled: true,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: circularBorder(
              30,
            ),
          ),
        ),
      ),
    );
  }
}
