import 'package:flutter/material.dart';
import 'package:flutterapp678/utils/Constants.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network("https://picsum.photos/200",fit: BoxFit.cover,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                   Text("We Understand Your Privacy", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(" we never share your Data with other's"),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Card(
                    elevation:4,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Your Number",
                                  labelText: "Number",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Passoword",
                                labelText: "Password",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height:20),
                            RaisedButton(onPressed: (){
                              Constants.prefs.setBool("loggedIn", true);
                              Navigator.pushReplacementNamed(context, "/HomePage");
                            },
                              child: Text("Sign Up"),

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),


    );
  }
}
//sale waiting me dalke torture krta hain
