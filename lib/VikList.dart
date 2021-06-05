import 'package:flutter/material.dart';

class VikList extends StatefulWidget {
  @override
  _VikListState createState() => _VikListState();
}

class _VikListState extends State<VikList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/abhi.jpeg"),
        //radius: 75,
      ),
      title: Text("Abhishek Kumar"),
      subtitle: Text("This is My First Message"),
      trailing: Icon(Icons.edit_attributes),
      onTap: (){
        return Card(
          child: ListTile(
            leading: Text("Delete Chat"),
            title: Text("hekl"),
          ),
        );
      },
      onLongPress: (){
        return Card(
          child: ListTile(
            leading: Text("Delete Chat"),
            title: Text("hekl"),
          ),
        );
      },

    );

  }
}
