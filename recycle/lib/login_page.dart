import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:recycle/sign_in.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle title = TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Center(
          child:Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Dianoga Recycling Tracker',style: title),
              SizedBox(height: 50),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton(){
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: (){
        signInWithGoogle().whenComplete((){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context){
                return FirstScreen();
              },
            ),
          );
        });
      },
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"),height:35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(color: Colors.green[100]),
    );
  }
}