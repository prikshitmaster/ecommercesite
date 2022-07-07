import 'package:ecommercesite/Screen/Home_page.dart';
import 'package:ecommercesite/Screen/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => homepage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
