import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:orderapp/UI/Auth/mybtn.dart';
import 'package:orderapp/UI/Auth/mytextfieldusername.dart';
import 'package:orderapp/UI/Auth/mytextfieldpssword.dart';

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget buildForgotPassBtn() {
    return Container(
      padding: EdgeInsets.only(left: 0, top: 0,right: 10, bottom: 0),
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forgot Password pressed',
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () => print('Sign Up Pressed'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Accout? ',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.of(context).pushNamedAndRemoveUntil('/Register', (Route<dynamic> route) => false),
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
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'images/img.jpg',
                      width: 500,
                      //height: 300,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 5, right: 20,bottom: 0),
                    child: Column(
                      children: <Widget>[
                        MyTextFieldUsername(),
                        MyTextFieldPassword(),
                        buildForgotPassBtn(),
                        MyBtn(),
                        buildSignUpBtn()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
