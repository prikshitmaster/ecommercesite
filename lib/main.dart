import 'package:ecommercesite/Screen/Home_page.dart';
import 'package:ecommercesite/Screen/login_page.dart';
import 'package:ecommercesite/utilies/route_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          // primaryTextTheme:GoogleFonts.latoTextTheme()
      ),

      initialRoute: "/login",
      routes: {
        MyRoute.homeRoute: (context) => homepage(),
        MyRoute.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
