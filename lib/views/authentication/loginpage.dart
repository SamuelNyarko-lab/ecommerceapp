import 'package:ecommerceapp/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: deviceHeight(context) * 0.6,
          width: deviceWidth(context) * 0.8,
          decoration: BoxDecoration(
            color: mainAppColor,
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
          padding: padding(25),
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
                        child: Text('LOGIN'),
                      ),
                      Tab(
                        child: Text('SIGN UP'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(children: [
                  loginView(),
                  signUpView(),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  loginView() {
    return const SizedBox(
      child: Text('Login'),
    );
  }

  signUpView() {
    return const SizedBox(
      child: Text('Sign Up'),
    );
  }
}
