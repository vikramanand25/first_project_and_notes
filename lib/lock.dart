

import 'package:flutter/material.dart';
import 'package:pin_code_view/pin_code_view.dart';

class LockPage extends StatefulWidget {
  @override
  _LockPageState createState() => _LockPageState();
}

class _LockPageState extends State<LockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PinCode(
        title: Text("Lock Your App"),
        correctPin: "456",
        subTitle: Text('safey'),
        obscurePin: true ,
        onCodeSuccess: (sucess){


        },
      ),
    );
  }
}
