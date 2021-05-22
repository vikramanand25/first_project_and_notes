// ElevatedButton(
// child: Text('Woolha.com'),
// style: ElevatedButton.styleFrom(
// primary: Colors.teal,
// ),
// onPressed: () {
// print('Pressed');
// },
// )
// import 'package:flutter/material.dart';
// import 'login_page.dart';
//
// void main(){
//   runApp(MaterialApp(
//     title: "loginPage",
//     home: LoginPage(),
//     theme: ThemeData(
//       primarySwatch: Colors.purple
//     ),
//   ));
// }
// // /*class HomePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     TextEditingController _nameController = TextEditingController();
// //     var coachingName = "My Coaching Name";
// //     var data;
// //     var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
// //
// //     @override
// //     void initState() {
// //       //getData().whenComplete(() => setState(() {}));
// //       getData();
// //       super.initState();
// //     }
// //
// //     getData() async {
// //       var res = await http.get(url);
// //       data = jsonDecode(res.body);
// //
// //       setState(() {});
// //     }
// //
// //     @override
// //     Widget build(BuildContext context) {
// // return Scaffold(
// // appBar: AppBar(
// // title: Container(
// // child: Text(
// // coachingName,
// // style: TextStyle(fontSize: 20),
// // )),
// // actions: [
// // // ignore: deprecated_member_use
// // FlatButton(
// // textColor: Colors.blue,
// // child: Text("Save"),
// // onPressed: () {
// // coachingName = _nameController.text;
// // setState(() {});
// // },
// // shape: CircleBorder(
// // side: BorderSide(color: Colors.transparent),
// // ),
// // )
// // ],
// // ),
// // drawer: VikDrawer(),
// // floatingActionButton: FloatingActionButton(
// // onPressed: () {
// // coachingName = _nameController.text;
// // setState(() {});
// // },
// // child: Icon(Icons.refresh),
// // ),
// // body: data != null ? Card(
// // child: ListView.builder(
// // itemBuilder: (context, index){
// // return ListTile(
// // title: Text(data[index]["title"]),
// // leading: Image.network((data[index]["url"])),
// // subtitle: Text("${data[index]["id"]}"),
// // );
// // },
// // itemCount: data.length
// // ),
// // ): CircularProgressIndicator(),
// // );
// // }
// // }
// //   }
// // }
// // *\

