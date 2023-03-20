import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: MaterialButton(
        elevation: 5,
        onPressed: () => print('Login Pressed'),
        padding: EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.indigo,
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
