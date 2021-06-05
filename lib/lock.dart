
import 'package:flutter/material.dart';
import 'package:flutterapp678/main.dart';
import 'package:velocity_x/velocity_x.dart';

import 'utils/Constants.dart';

class LockPage extends StatefulWidget {
  const LockPage({Key key}) : super(key: key);

  @override
  _LockPageState createState() => _LockPageState();
}

class _LockPageState extends State<LockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              VxArc(
                height:50,
                arcType: VxArcType.CONVEX,
                child: Container(
                  child: Image.asset("assets/lock.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Password",
                    hintText : "Enter Your Password",
                    //enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(25) ),
                    border: OutlineInputBorder(
                    ),
                  ),
                ),

              ),
              ElevatedButton(
                  child: Text("Take Me In"),
                style: ButtonStyle(
                  //shape: "",
                ),

                onPressed: (){
                  Constants.prefs.setBool("lockpin", true);
                  return Navigator.pushReplacementNamed(context, "/HomePage");
                   // return Navigator.pushNamed(context, "/HomePage");
                },
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}
