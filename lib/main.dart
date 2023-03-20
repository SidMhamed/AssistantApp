import 'package:flutter/material.dart';
import 'package:orderapp/UI/Login.dart';
import 'package:orderapp/UI/regester.dart';
import 'package:orderapp/UI/Home.dart';

void main() => runApp( MaterialApp(
  routes: <String , WidgetBuilder>{
    '/Login' : (BuildContext context) => new Login(),
    '/Register' : (BuildContext context) => new Register(),
  },
  home: Home(),
));

