import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:orderapp/UI/Auth/mytextfieldusername.dart';
import 'package:orderapp/UI/Login.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget buildSignUpBtn() {
    return GestureDetector(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Do you have an Accout? ',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: 'Sign In',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.of(context).pushNamedAndRemoveUntil('/Login', (Route<dynamic> route) => false),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text('AssistantApp'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView(
          padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 30,
                    letterSpacing: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    )
                  ]),
              height: 50,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.indigo,
                      size: 25,
                    ),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    )
                  ]),
              height: 50,
              child: TextField(
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.indigo,
                      size: 25,
                    ),
                    hintText: 'Phone',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    )
                  ]),
              height: 50,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.location_city,
                      color: Colors.indigo,
                      size: 25,
                    ),
                    hintText: 'City',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    )
                  ]),
              height: 50,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.indigo,
                      size: 25,
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    )
                  ]),
              height: 50,
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.indigo,
                      size: 25,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              child: MaterialButton(
                elevation: 5,
                onPressed: () => print('Register Pressed'),
                padding:
                    EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.indigo,
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            buildSignUpBtn(),
          ],
        ),
      ),
    );
  }
}
