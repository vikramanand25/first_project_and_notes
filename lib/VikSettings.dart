import 'package:flutter/material.dart';
import 'Setting_Page.dart';

class VikSettings extends StatefulWidget {
  const VikSettings({Key key}) : super(key: key);

  @override
  _VikSettingsState createState() => _VikSettingsState();
}

class _VikSettingsState extends State<VikSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.indigo]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Row(
                children: [
                  Stack(
                    children: [ Container(
                      padding: EdgeInsets.all(10),
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/vikimg.jpeg",),
                        )
                      ),
                    ),
                      Positioned(
                            bottom: 0,
                          right: 0,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Container(
                              height: 40,
                              width: 40,
                              child: Icon(Icons.add_a_photo_outlined),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.white,),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ))
                    ]
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("My Greetings", style: TextStyle(fontSize: 22, color: Colors.blue, fontWeight: FontWeight.bold),),
                             //Text("Vikram"),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Name"),
                             Text("Vikram Singh"),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Birthday"),
                             Text("26/04/1994"),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Likes"),
                             Icon(Icons.thumb_up_outlined),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Popularity"),
                             Icon(Icons.face_retouching_natural),
                           ],
                         ),
                       ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),

            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("GENERAL SETTINGS", style: TextStyle(fontWeight: FontWeight.bold,color:Colors.blue,),),
                    //trailing: Icon(Icons.edit_outlined),
                  ),
                  ListTile(
                    onTap: (){
                      return Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));
                    },
                    title: Text("My Profile Settings",),
                    trailing: Icon(Icons.edit_outlined),
                  ),Divider(height: 0.0,),
                  ListTile(
                        //leading: Icon(Icons.mobile_friendly),
                    title: Text("Username",),
                    subtitle: Text("SearchMeByThisName"),
                    trailing: Icon(Icons.person_pin),
                  ),Divider(height: 0.0,),
                  // ListTile(
                  //   title: Text("",),
                  //   //trailing: Text("VikEmailAddressHere@mail.com"),
                  // ),Divider(height: 0.0,),
                  ListTile(
                   // leading: Icon(Icons.mobile_friendly),
                    title: Text("Mobile",),
                    subtitle: Text("+91 9998886665",),
                    trailing: Icon(Icons.mobile_friendly),
                  ),Divider(height: 0.0,),

                ],
              ),
            ),SizedBox(height: 10.0,),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("GENERAL SETTINGS", style: TextStyle(fontWeight: FontWeight.bold,color:Colors.blue,),),
                    //trailing: Icon(Icons.edit_outlined),
                  ),
                  ListTile(
                    title: Text("My Profile Settings",),
                    trailing: Icon(Icons.edit_outlined),
                  ),Divider(height: 0.0,),
                  ListTile(
                    title: Text("Security",),
                    //trailing: Text("VikUsername45",),
                  ),Divider(height: 0.0,),
                  ListTile(
                    title: Text("Notification",),
                    //trailing: Text("VikEmailAddressHere@mail.com"),
                  ),Divider(height: 0.0,),
                  ListTile(
                    title: Text("Mobile",),
                    //trailing: Text("+91 9998886665",),
                  ),Divider(height: 0.0,),

                ],
              ),
            ),
            SizedBox(height: 10.0,),
          ],
        ),

      ),
    );
  }
}
