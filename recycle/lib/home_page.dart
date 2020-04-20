import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:recycle/login_page.dart';
import 'package:recycle/sign_in.dart';

class HomePage extends StatefulWidget{
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.search,
                size:26.0,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(name),
              decoration: BoxDecoration(
                color: Colors.green[500],
              ),
            ),
            ListTile(
              title: Text('Sign Out'),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>SignOutScreen()));
              },
            ),
          ],
        ),
      ),
      body: Center(

      ),
    );
  }
}