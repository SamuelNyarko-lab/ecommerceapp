import 'package:ecommerceapp/utils/colors.dart';
import 'package:ecommerceapp/widgets/button.dart';
import 'package:ecommerceapp/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../utils/utils.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Email Field
              TextInputField(
                textEditingController: userNameController,
                hintText: 'EMAIL',
                validator: (value) {
                  if (userNameController.text.isEmpty) {
                    return 'Enter email';
                  }
                  return null;
                },
              ),

              verticalSpacing(10),
              //Password Field
              TextInputField(
                textEditingController: passwordController,
                hintText: 'PASSWORD',
                validator: (value) {
                  return '';
                },
              ),
              //Forgot Password

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.white,
                      // fontSize: 15.0,
                      fontFamily: 'Poppins',
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SubmitButton(
                buttonText: 'LOGIN',
                onSubmit: () {
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate()) {
                    print('Login Successful');
                  }
                },
              ),

              Container(
                padding: padding(10),
                child: const Text(
                  'OR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialLoginButton(
                    buttonType: SocialLoginButtonType.google,
                    onPressed: () {},
                    mode: SocialLoginButtonMode.single,
                    borderRadius: 50,
                    height: 45,
                    textColor: mainAppColor,
                    width: deviceWidth(context) * 0.4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
