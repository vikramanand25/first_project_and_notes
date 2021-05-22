import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VikDrawer extends StatefulWidget {
  @override
  _VikDrawerState createState() => _VikDrawerState();
}

class _VikDrawerState extends State<VikDrawer> {
  bool aAvalue = false;

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.height;
    return Drawer(
      child: Container(
        color: Colors.teal,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/vikimg.jpeg"),
              ),
              accountName: Text("My Name"),
              accountEmail: Text("MyEmail@gmail.com"),
              //currentAccountPicture: Image.network("https://unsplash.com/photos/rNYCrcjUnOA"),
            ),
            ListTile(
              title: Text("Lock Your App"),
              trailing: Icon(Icons.lock),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      child: Container(
                          child: SwitchListTile(
                        value: aAvalue,
                        onChanged: (bool newValue) {
                          setState(() {
                            aAvalue = newValue;
                          });
                        },
                        title: Text("Lock"),
                      )),
                    );
                  },
                );
              },
            ),
            ListTile(
              title: Text("My Photos"),
              trailing: Icon(Icons.image),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
