import 'dart:io';
import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:AssistantApp/UI/Login.dart';
import 'package:image_picker/image_picker.dart';

class Register extends StatefulWidget {

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  List<String> typesAccount = ['Normal account', 'Pharmacist account'];
  String selectedTypeAccount = 'Normal account';
  late PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: imageprofile(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0,bottom: 5.0),
                      child: Column(
                        children: <Widget>[
                          nameTextField(),
                          SizedBox(
                            height: 10,
                          ),
                          phoneTextField(),
                          SizedBox(
                            height: 10,
                          ),
                          addressTextField(),
                          SizedBox(height: 10,),
                          cityTextField(),
                          SizedBox(
                            height: 10,
                          ),
                          emailTextField(),
                          SizedBox(
                            height: 10,
                          ),
                          passwordTextField(),
                          SizedBox(
                            height: 30,
                          ),
                          btnSubmit(),
                          buildSignUpBtn(),
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

  Widget imageprofile() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 80.0,
            backgroundImage:AssetImage('images/me.png'),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.indigo,
                size: 30.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Choose Profile photo',
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {
                 takePhoto(ImageSource.camera);
                },
                icon: Icon(
                  Icons.camera,
                  size: 30,
                  color: Colors.indigo,
                ),
              ),
              Text(
                'Camera',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: Icon(
                  Icons.image,
                  size: 30,
                  color: Colors.indigo,
                ),
              ),
              Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile as PickedFile;
    });
  }

  Widget nameTextField() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
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
    );
  }

  Widget phoneTextField() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
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
    );
  }

  Widget addressTextField(){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
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
              Icons.add_location,
              color: Colors.indigo,
              size: 25,
            ),
            hintText: 'Address',
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget cityTextField() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
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
    );
  }

  Widget emailTextField() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            )
          ]),
      height: 50,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.white,
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
    );
  }

  Widget passwordTextField() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
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
    );
  }

  Widget btnSubmit() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      child: MaterialButton(
        elevation: 5,
        onPressed: () => Navigator.of(context)
            .pushNamedAndRemoveUntil('/Home', (Route<dynamic> route) => false),
        padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
    );
  }

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
                ..onTap = () => Navigator.of(context).pushNamedAndRemoveUntil(
                    '/Login', (Route<dynamic> route) => false),
            ),
          ],
        ),
      ),
    );
  }
Widget buildTextField(String placeholder, bool isPasswordTextField){
    return Container(
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
        obscureText: isPasswordTextField,
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
            hintText: placeholder,
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
}


}
