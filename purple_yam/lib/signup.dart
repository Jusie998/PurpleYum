import 'package:flutter/material.dart';
import 'verify.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  TextEditingController _firstname = new TextEditingController();
  TextEditingController _lastname = new TextEditingController();
  TextEditingController _mobile = new TextEditingController();
  TextEditingController _password = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(widget.title),
          ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.white, Colors.deepPurple])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Image(
                image: AssetImage('assets/images/PurpleLogo2.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 0),
              child: TextField(
                controller: _firstname,
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.red),
                  ),
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: Colors.white),
                  contentPadding: EdgeInsets.all(20.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10.0, bottom: 0),
                  child: TextField(
                    controller: _lastname,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.red),
                      ),
                      labelText: 'Last Name',
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
            ),),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10.0, bottom: 0),
                  child: TextField(
                    controller: _mobile,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.red),
                      ),
                      labelText: 'Mobile Number or Email',
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
            ),),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10.0, bottom: 0),
                  child: TextField(
                    controller: _password,
                    obscureText: true,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.red),
                      ),
                      labelText: 'New Password',
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
            ),),
             Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10.0, bottom: 0),
                  child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: "By clicking Sign Up, you agree to our Terms ",
                  style: TextStyle(color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Terms Data Privacy',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600)),
                    TextSpan(text: ' and '),
                    TextSpan(
                        text: 'Cookies Policy',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text:
                            '. You may receive SMS Notifications from us and can opt out any time.')
                  ]),
              ),
            ),
                      ElevatedButton(onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const Verify())));
                      }, child: Text('Sign Up')),
          ],
        ),
      ),
    );
  }
}
