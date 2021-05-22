import 'package:flutter/material.dart';

class VikCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: Column(
        children: [
          Text("Enter Your Name"),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    ));
  }
}
