import 'package:flutter/material.dart';
class AtCard extends StatefulWidget {
  final String headingText;
  const AtCard({Key key, this.headingText}) : super(key: key);

  @override
  _AtCardState createState() => _AtCardState();
}

class _AtCardState extends State<AtCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: GestureDetector(
        onTap: () {
          print("Card Pressed");
        },
        child: Card(
          color: Colors.cyan,
          child: Text(widget.headingText, style: TextStyle(fontSize: 20),),
          ),
        ),
      );
  }
}