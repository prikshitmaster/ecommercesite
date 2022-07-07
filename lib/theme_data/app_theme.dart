import 'package:flutter/material.dart';

class AppbarTheme {
  static AppBar lighttheme(BuildContext context) => AppBar(
        title: const Text(
          " Home Page ",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
      );

  static AppBar darktheme(BuildContext context)=> AppBar(
    title: const Text(
      " Home Page ",
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.black,
    elevation: 0.0,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    centerTitle: true,

  );
}
