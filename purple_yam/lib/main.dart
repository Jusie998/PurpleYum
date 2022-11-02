import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:purple_yam/signup.dart';
import 'signup.dart';
import 'dashboard.dart';
import 'dashboard1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text(widget.title),
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.deepPurple
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                      Image(image: AssetImage('assets/images/PurpleLogo.png')
                      ),
                      Container(
                        child: TextField(
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration( enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.red)
                              ),
                              labelText: 'Email or Phone',
                              labelStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.all(20.0),
                              prefixIcon: Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              )
                            ),
                          ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                            top: 5.0, right: 0, bottom: 0, left: 0
                          ),
                          child: TextField(
                            textAlign: TextAlign.left,
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration( enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.red)
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.all(20.0),
                              prefixIcon: Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                              )
                            ),
                          ),
                        ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            child: Text('Login'),
                            style: ButtonStyle(
                              //ButtonStyling
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => Dashboard1())));
                            }
                          ),
                        ),
                      Container(
                          width: double.infinity,
                          child: Text(
                            'Forgot Password?',
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Colors.white,
                            decoration: TextDecoration.underline)
                          ),
                        ),
                  ],
                ),
            ),
            Container(
                child: Column(
                  children: <Widget> [
                    RichText(
                      text: TextSpan(
                        text: 'Sign Up For Free',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline
                        ),
                        recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const SignUp())));
                        }
                        ))
                      // Text(
                      //   'Sign Up For Free',
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     decoration: TextDecoration.underline
                      //   ),
                      //    onPressed: () {
                          
                      //    }
                      //   )
                    ]
                ),
            )
          ],
        )
      )
    );
  }
}
