import 'package:ecommerceapp/utils/utils.dart';
import 'package:ecommerceapp/widgets/loginView.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: deviceHeight(context) * 0.65,
          width: deviceWidth(context) * 0.8,
          padding: padding(25),
          decoration: BoxDecoration(
            color: mainAppColor,
            borderRadius: circularBorder(50),
          ),
          child: DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: circularBorder(50),
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.white,
                    indicatorWeight: 1,
                    indicator: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: circularBorder(30),
                    ),
                    labelColor: mainAppColor,
                    tabs: const [
                      Tab(
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(children: [
                  LoginView(),
                  signUpView(),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  signUpView() {
    return const SizedBox(
      child: Text('Sign Up'),
    );
  }
}
