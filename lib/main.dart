import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutterapp678/VikDrawer.dart';
import 'package:flutterapp678/login_page.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Funtoos()
  );
}
class Funtoos extends StatefulWidget {
  const Funtoos({Key key}) : super(key: key);

  @override
  _FuntoosState createState() => _FuntoosState();
}

class _FuntoosState extends State<Funtoos> {
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      title: "funtoos",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}
class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
           await  db.collection('books').doc().set(
               {
                 'title': 'title',
                 'author': 'author'
               });
          },
          child: Icon(Icons.add),
        ),
        drawer: VikDrawer(),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.indigo]),
            ),
          ),
          title: Text("Funtoos for Fun"),
          actions: [
            FlatButton(onPressed: (){
              return AlertDialog(
                title: Text("More"),
              );
            },
                child: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(tabs: [
            Tab(child: Icon(Icons.home),),
            Tab(child: Text("Online"),),
            Tab(child: Text("Groups"),),
            Tab(child: Text("Private"),),
            Tab(child: Text("extra"),),
          ],
          ),
        ),
        body: TabBarView(
          children: [
            StreamBuilder<QuerySnapshot>(
              stream: db.collection('users').snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                print(snapshot.data.docs[0].toString());
                return Text("Gopi");
              }
            ),
            Text("Gopi"),
            Text("Gopi"),
            Form(
                child: Column(
              children: [
                Image.asset("assets/lock.jpg",width: 200,height: 200,),
                Text("Please Set a Password ", style: TextStyle(fontSize: 30,backgroundColor: Colors.blue,letterSpacing: 1),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText:'Enter Your Password',
                      border: OutlineInputBorder(),
                    )

                  ),
                ),
              ],
            )),
            Text("Gopi"),
          ],
        ),
      ),
    );
  }
}
