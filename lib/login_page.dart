import 'package:flutter/material.dart';
import 'package:flutterapp678/services/auth.dart';

import 'SignUpPage.dart';
import 'main.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController  emailController = TextEditingController();
  final TextEditingController  passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    height:MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text("Sign In To Continue", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22, color: Colors.grey), ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText:"Email",
                      hintText: "Enter Your Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  SizedBox( height: 20,),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText:"Password",
                      hintText: "Enter Your Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox( height: 20,)
                ],
              ),

            ),
          ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: (){
                  if(emailController.text.isEmpty || passwordController.text.isEmpty){
                    print("Fill the required field");
                    return ("Something went Wrong");
                  }
                  else{
                    LoggedIn(emailController.text, passwordController.text).then((user){
                      if(user != null){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstPage()));
                      }
                      else{
                        print("could Not found Data");
                      }
                    });
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                    child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ),
            SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (cpmtext)=> SignUp_Page()));
            },
              child: Text("Create Account", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}
