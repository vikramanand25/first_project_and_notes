import 'package:flutter/material.dart';
import 'package:flutterapp678/Setting_Page.dart';

import 'VikSettings.dart';
import 'main.dart';

class VikDrawer extends StatefulWidget {
  const VikDrawer({Key key}) : super(key: key);

  @override
  _VikDrawerState createState() => _VikDrawerState();
}

class _VikDrawerState extends State<VikDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.only(bottom: 0.0),
            decoration: BoxDecoration(gradient: LinearGradient(colors:[Colors.blue,  Colors.indigo]),),
            accountName: Text("Vikram singh"),
            accountEmail: Text("Vikram@email.com"),
            currentAccountPicture: GestureDetector( onTap:(){
              setState(() {    });
            },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/vikimg.jpeg"),
              ),
            ),
          ),
          ListTile(title: Text("My Photos"),
            trailing: Icon(Icons.image),
            onTap: (){
              return Navigator.push(context, MaterialPageRoute(builder: (context)=> SavedImage()));
            },
          ), //my photos
          Divider(height: 0.0,),
          ListTile(title: Text("Lock Your App"),
          trailing: Icon(Icons.lock),
            onTap: (){
            return Navigator.push(context, MaterialPageRoute(builder: (context)=> LockSettings() ));
            },
          ), //lock Your app
            Divider(height: 0.0,),
          ListTile(title: Text("Saved Contacts"),
            trailing: Icon(Icons.contact_mail),
            onTap: (){
              return Navigator.push(context, MaterialPageRoute(builder: (context)=> SavedContacts()));
            },
          ), //saved contacts
          Divider(height: 0.0,),

          ListTile(title: Text("Birthday Reminder"),
          trailing: Icon(Icons.card_giftcard),
            onTap: (){
            return Navigator.push(context, MaterialPageRoute(builder: (context)=> BirthdayRem()));
            },
          ), //Birthday
            Divider(height: 0.0,),
          ListTile(title: Text("Notification Settings"),
            trailing: Icon(Icons.notification_important_outlined),
            onTap: (){
              return Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationSetting()));
            },
          ), //Notification
          Divider(height: 0.0,),

          ListTile(title: Text("Privacy Setting"),
          trailing: Icon(Icons.privacy_tip_outlined),
            onTap: (){
            return Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePrivacy()));
            },
          ), //privacy
            Divider(height: 0.0,), Divider(height: 0.0,),
          ListTile(title: Text("Settings"),
          trailing: Icon(Icons.settings),
            onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=> VikSettings()));
            },
          ), //Settings
          Divider(height: 0.0,),


        ],

      ),
    );
  }
}
