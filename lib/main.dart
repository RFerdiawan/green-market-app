import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_app/presentations/views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, AsyncSnapshot snapshot) {
          // Show splash screen while waiting for app resources to load:
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Splash();

          } else {
            // Loading is done, return the app:
            return Scaffold(
                  body: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(37, 101, 38, 40),
                        child: Image.asset(
                            'assets/onboard.png',
                          width: 300,
                          height: 300,
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Center(child: Text('Search by Food', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),)),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(71, 0, 72, 0),
                        child: Text('By using Green Market, now you can search for the ingredients you want to buy based on the food you want to make', style: TextStyle(fontSize: 18,), textAlign: TextAlign.center,),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(35, 90, 35, 0),
                        width: 375,
                        height: 50,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            onPressed: (){
                              Navigator.of(context).push( MaterialPageRoute(builder: (context)=>Login()
                              ));
                            },
                          color: Colors.green,
                          child: Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),),
                            ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don’t have an account? '),
                            TextButton(
                              onPressed: (){
                                Navigator.of(context).push( MaterialPageRoute(builder: (context)=>Login()
                                ));
                              },
                              child: Text('Register'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )

            );
          }
        },
      ),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/logo.png', width: 300, height: 300, ),
      ),
    );
  }
}