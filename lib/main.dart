import 'package:ecommerceapp/utils/utils.dart';
import 'package:flutter/material.dart';

import 'views/authentication/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerceApp',
      debugShowCheckedModeBanner: false,
      theme: mainThemeData,
      home: const LoginPage(),
    );
  }
}
