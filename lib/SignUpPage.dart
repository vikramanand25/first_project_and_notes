
import 'package:flutter/material.dart';
import 'package:flutterapp678/login_page.dart';
import 'main.dart';
import 'services/auth.dart';
class SignUp_Page extends StatefulWidget {
  const SignUp_Page({Key key}) : super(key: key);

  @override
  _SignUp_PageState createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  final TextEditingController  nameController = TextEditingController();
  final TextEditingController  emailController = TextEditingController();
  final TextEditingController  passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: isLoading ? Center(child: Container(child: CircularProgressIndicator())) : Column(
        children: [
          SizedBox(height: 20,),
          Text("Sign Up To Continue", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22, color: Colors.grey), ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText:"name",
                      hintText: "Enter Your Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                  SizedBox( height: 20,),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText:"email",
                      hintText: "Enter Your email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
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
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                  SizedBox( height: 20,),
                  // TextFormField(
                  //   controller: passwordController,
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //     labelText:"Confirm Password",
                  //     hintText: "Re-Enter Password",
                  //     border: OutlineInputBorder(
                  //         //borderRadius: BorderRadius.circular(30)
                  //     ),
                  //   ),
                  // ),
                  // SizedBox( height: 20,)
                ],
              ),

            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 60),
            child: GestureDetector(
              onTap: (){
                if (emailController.text.isNotEmpty &&
                passwordController.text.isNotEmpty){
                  setState(() {
                    isLoading= true;
                  });
                  CreateAccount(nameController.text, emailController.text, passwordController.text).then((user){
                    if(user != null){
                      setState((){
                        isLoading= false;
                      });
                      print("sucess");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstPage()));
                    }else{
                      print("error/failed");
                    }
                  }
                  );
                }else {
                  print("please enter some data");
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              ),
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
              onTap: ()=> Navigator.pop(context),
              child: Text("Go to Login Page", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}
