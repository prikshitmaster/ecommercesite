import 'package:ecommercesite/utilies/route_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

 final _formKey = GlobalKey<FormState>();
   moveTohome(BuildContext context)async{

       if(_formKey.currentState!.validate()){
         Navigator.pushNamed(context, MyRoute.homeRoute);
         setState(() {

         });
       }

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  const Text(" login page"),
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
              style:  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(
             height: 40,
           ),
                Padding(
                  key: _formKey,
                  padding:   const EdgeInsets.symmetric(vertical: 20 , horizontal: 30),
                  child: Form (

                    key: _formKey,
                    child: Column(
                      children:  [
                        TextFormField(


                          decoration:   InputDecoration(
                            hintText: "Enter Username ",
                            labelText: "Username",
                          ),

                             validator: ( value){
                            if(value!.isEmpty){
                              return "enter your username";
                            }else{
                              return null;
                            }
                             },
                        ),      TextFormField(
                        obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Enter Password ",
                            labelText: "Password",

                          ),
                                 validator: (value){
                                    if(value!.length <6){
                                      return " Aleast should be 6 character";
                                    }
                                    else if(value!.isEmpty
                                    ){
                                      return "Enter your password";
                                    }
                                    else{
                                      return null;
                                    }
                                 },



                        ),
                       const SizedBox(
                         height: 20,
                       ),
                         ElevatedButton(
                             child: const Text('Login'),
                           onPressed: () => moveTohome(context),

                          ),
                      ],
                    ),
                  ),
                )

          ],
        ),
      ),
    );
  }
}
