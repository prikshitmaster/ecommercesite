import 'package:ecommercesite/utilies/route_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(" login page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const Padding(
                padding: EdgeInsets.zero,
                child: Image(
                  image: AssetImage('assets/loginimage.png'),
                  fit: BoxFit.cover,
                  height: 270,
                  width: 500,
                )),
            const SizedBox(
              height: 20,
            ),
             Text(
              "Welcome $name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

           const SizedBox(
             height: 40,
           ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20 , horizontal: 30),
                  child: Column(
                    children:  [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Username ",
                          labelText: "Username"
                        ),
                        onChanged:(value){
                          name = value;
                          setState(() {

                          });
                        },

                      ),    TextField(
                      obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password ",
                          labelText: "Password",

                        ),

                      ),
                     SizedBox(
                       height: 20,
                     ),
                       ElevatedButton(
                           child: Text('Login'),
                         onPressed: (){
                           Navigator.pushNamed(context, MyRoute.homeRoute);
                         },
                        ),
                    ],
                  ),
                )

          ],
        ),
      ),
    );
  }
}
