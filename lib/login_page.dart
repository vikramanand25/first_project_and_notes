import 'package:flutter/material.dart';
import 'package:flutterapp678/main.dart';
import 'package:flutterapp678/utils/Constants.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final _formKey = GlobalKey<FormState> ();

void validate() {
  if (_formKey.currentState.validate()) {
    print("Ok");
  }
  else {
    print("error");
  }
}
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
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value){
                                if  (value.isEmpty){
                                  return "fill the form";
                                }
                                else if(value.length <= 2){
                                  return "Enter Minimum 3 characters";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Enter Your Emaol",
                                  labelText: "Email",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              validator: (value){
                                if (value.isEmpty){
                                  return "Enter a Valid Password";
                                }
                                else if (value.length <=2){
                                  return "Password will be atleast 3 digit";
                                }
                                else
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Enter Passoword",
                                labelText: "Password",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height:20),
                            RaisedButton(onPressed: validate,
                            //       (){
                            //   Constants.prefs.setBool("isNewUser", false);
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstPage()));
                            // },
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
