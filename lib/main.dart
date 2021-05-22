import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp678/VikDrawer.dart';
import 'package:flutterapp678/VikList.dart';
import 'package:flutterapp678/lock.dart';
import 'package:flutterapp678/login_page.dart';
import 'package:flutterapp678/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

 Future main() async {
   WidgetsFlutterBinding.ensureInitialized();
   Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp( 
    debugShowCheckedModeBanner: false,
    title: "Share Market",
    home: Constants.prefs.getBool("loggedIn") == true ? HomePage() : LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    routes: {
      //"/Login": (context) => LoginPage(),
      "/Login": (context) => LockPage(),
      "/HomePage" : (context) => HomePage(),
    },
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: VikDrawer(),
        backgroundColor: Colors.white,
        bottomNavigationBar: CurvedNavigationBar(

          items: [
            Icon(Icons.home),
            Icon(Icons.group_rounded),
            Icon(Icons.add),
            Text("Vikram"),
          ],
          color: Colors.white60,
          buttonBackgroundColor: Colors.teal,
          backgroundColor: Colors.lightGreen,
          animationDuration: Duration(milliseconds: 200),
          animationCurve: Curves.decelerate,
          height: 50,
          onTap: (index){
            setState(() {
            });
          },
        ),
        appBar: AppBar(
          title: Text("ABHI APP"),
          actions: [
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.do_disturb_alt_outlined), onPressed: () {}),
          ],
          bottom: TabBar(
            labelPadding: EdgeInsets.only(right: 0),
            //isScrollable: true,
            labelColor: Colors.lightGreenAccent,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: Icon(Icons.person),
              ),
              Tab(child: Text("game")),
              Tab(child: Text("book")),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock),
                    Text("My Diary"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          ListView.separated(
            itemBuilder: (context, index) {
              return VikList();
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: 3,
          ),
          Column(
            children: [
              Card(
                child: Container(
                  height: 200, width: 200,
                  child: Text("Hello  Abhishek"),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Card(
                child: Container(
                  height: 200,
                  width: 200,
                  child: Text("Hello"),
                ),
              )
            ],
          ),
          Column(
            children: [
              Card(
                child: Container(
                  height: 200,
                  width: 200,
                  child: Center(child: Text("Computer")),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.lightGreenAccent, Colors.teal]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: const Offset(5.0, 5.0),
                          blurRadius: 4.20,
                        )
                      ]),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
