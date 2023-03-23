import 'package:flutter/material.dart';
import 'package:AssistantApp/UI/Login.dart';
import 'package:AssistantApp/UI/regester.dart';
import 'package:AssistantApp/UI/Home.dart';
import 'package:AssistantApp/UI/AddPost.dart';

void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: <String , WidgetBuilder>{
    '/Login' : (BuildContext context) => new Login(),
    '/Register' : (BuildContext context) => new Register(),
    '/Home' : (BuildContext context) => new Home(),
    '/AddPost' : (BuildContext context) => new AddPost(),
  },
  home: Login(),
));

