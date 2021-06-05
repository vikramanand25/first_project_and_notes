
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}
class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Profile Settings'),
        toolbarHeight: 170,
        flexibleSpace:
            Container(
              decoration:BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/vikimg.jpeg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(child: Icon(Icons.thumb_up_outlined)),
                    Icon(Icons.thumb_up_outlined),
                    Icon(Icons.thumb_up_outlined)
                  ],
                ),
              ),
            ),

          ),
          Container(
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("MY SAVED DETAIL'S", style: TextStyle(fontWeight: FontWeight.bold,color:Colors.blue,),),
                    //trailing: Icon(Icons.edit_outlined),
                  ),
                  ListTile(
                    title: Text("Change Your Name",),
                    trailing: Text("Vikram singh",),
                  ),Divider(height: 0.0,),
                  ListTile(
                    title: Text("Username",),
                    trailing: Text("VikUsername45",),
                  ),Divider(height: 0.0,),
                  ListTile(
                    title: Text("Email",),
                    trailing: Text("VikEmailAddressHere@mail.com"),
                  ),Divider(height: 0.0,),
                  ListTile(
                    title: Text("Mobile",),
                    trailing: Text("+91 9998886665",),
                  ),Divider(height: 0.0,),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}





class SavedImage extends StatefulWidget {
  const SavedImage({Key key}) : super(key: key);
  @override
  _SavedImageState createState() => _SavedImageState();
}
class _SavedImageState extends State<SavedImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Image"),
      ),
      body: Container()
    );
  }
}


class LockSettings extends StatefulWidget {
  const LockSettings({Key key}) : super(key: key);

  @override
  _LockSettingsState createState() => _LockSettingsState();
}

class _LockSettingsState extends State<LockSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


class SavedContacts extends StatefulWidget {
  const SavedContacts({Key key}) : super(key: key);

  @override
  _SavedContactsState createState() => _SavedContactsState();
}

class _SavedContactsState extends State<SavedContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Saved Contacts"),
      ),

      body: ListView(
        children: [
          ListTile(
            title: Text("Vikram Singh"),
            trailing: Text("8999456532"),
          )
        ],
      ),
    );
  }
}



class BirthdayRem extends StatefulWidget {
  const BirthdayRem({Key key}) : super(key: key);

  @override
  _BirthdayRemState createState() => _BirthdayRemState();
}

class _BirthdayRemState extends State<BirthdayRem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Birthday"),
      ),

      body: Container(),
    );
  }
}




class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key key}) : super(key: key);
  @override
  _NotificationSettingState createState() => _NotificationSettingState();
}
class _NotificationSettingState extends State<NotificationSetting> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: ListView(
        children: [
          Card(
            child: SwitchListTile(
              value: _isSelected,
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected = newValue;
                });
              },
              title: Text("Do Not Disturb", style: TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(height: 20,),

          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text("Message",style: TextStyle(fontWeight: FontWeight.w900)),
                  trailing: Text("On", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
                  onTap: (){},
                ), //Message
                Divider(height: 0.0,),
                ListTile(
                  title: Text("Call",style: TextStyle(fontWeight: FontWeight.w900)),
                  trailing: Text("On", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
                  onTap: (){},
                ),
                Divider(height: 0.0,),
                ListTile(
                  title: Text("Group Message",style: TextStyle(fontWeight: FontWeight.w900)),
                  trailing: Text("On", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
                  onTap: (){},
                ),
                Divider(height: 0.0,),
                ListTile(
                  title: Text("",style: TextStyle(fontWeight: FontWeight.w900)),
                  trailing: Text("On", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
                  onTap: (){},
                ),
                Divider(height: 0.0,),
              ],
            ),
          )
        ],
      ),
    );
  }
}



class ProfilePrivacy extends StatefulWidget {
  const ProfilePrivacy({Key key}) : super(key: key);

  @override
  _ProfilePrivacyState createState() => _ProfilePrivacyState();
}

class _ProfilePrivacyState extends State<ProfilePrivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Settings"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Privacy",style: TextStyle(color: Colors.blue, fontSize: 22,),),
          ), //privacy heading
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text("Profile Photo",style: TextStyle(fontWeight: FontWeight.w900)),
                  trailing: Text("My contacts", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
                  onTap: (){},
                ), //Profile Photo
                Divider(height: 0.0,),
                ListTile(
                  title: Text("Number",style: TextStyle(fontWeight: FontWeight.w900)),
                  trailing: Text("My contacts", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
                  onTap: (){},
                ), //Number
                Divider(height: 0.0,),
                ListTile(
                  title: Text("Date Of Birth",style: TextStyle(fontWeight: FontWeight.w900)),
                  trailing: Text("My contacts", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
                  onTap: (){},
                ), //BirthDay
                Divider(height: 0.0,),
                ListTile(
                  title: Text("Last Seen",style: TextStyle(fontWeight: FontWeight.w900)),
                  trailing: Text("My contacts", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
                  onTap: (){},
                ),
                Divider(height: 0.0,),

              ],
            ),
          ),

        ],
      ),
    );
  }
}