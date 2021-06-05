import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp678/VikList.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({Key key}) : super(key: key);

  @override
  _BottomPageState createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> with SingleTickerProviderStateMixin {
  TabController  _tabController;
  @override

  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override

  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: [
        Icon(
          Icons.call,
        ),
        Icon(Icons.group_rounded),
        Icon(Icons.person_pin_outlined),
        Icon(Icons.add),
      ],
      color: Colors.blue,
      buttonBackgroundColor: Colors.blue,
      backgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 400),
      animationCurve: Curves.decelerate,
      height: 70,
      onTap: (index) {
        showBottomSheet(
          context: context,
          backgroundColor: Colors.black12,
          builder: (context) => GestureDetector(
            child:MyProfile(),
            onVerticalDragStart: (_) {},
          ),

        );
        setState(() {
          if (index == 0) return MyProfile();
          if (index == 1) return MyProfile();
          if (index == 2) return MyProfile();
        });
      },
    );
  }
}

class MyProfile extends StatefulWidget {
  const MyProfile({Key key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 800,
      child: Text("Welcome"
      ),
    );
  }
}

class CallDetails extends StatefulWidget {
  const CallDetails({Key key}) : super(key: key);

  @override
  _CallDetailsState createState() => _CallDetailsState();
}

class _CallDetailsState extends State<CallDetails> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return VikList();
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: 10,
    );
  }
}
