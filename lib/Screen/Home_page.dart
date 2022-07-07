import 'package:ecommercesite/theme_data/app_theme.dart';
import 'package:ecommercesite/widget/drawer.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppbarTheme.lighttheme(context),


      body:  Column(
        children: [

        
        ],
      ),
      drawer: DrawerPage(),

    );
  }
}
