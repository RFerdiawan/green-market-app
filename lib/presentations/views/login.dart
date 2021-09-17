import 'package:flutter/material.dart';
import 'package:market_app/presentations/views/home.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 35, right: 35),
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Image.asset('assets/logo.png', width: 200, height: 200, ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 16),
            child: Center(child: Text('Welcome to Green Market', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
            child: Center(child: Text('Keep healty with fresh ingredients!',)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextFormField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Username',
                prefixIcon: Icon(Icons.person),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.vpn_key_rounded),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            height: 50,
            child: RaisedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Home(value: _textController.text,)));
              },
              child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
