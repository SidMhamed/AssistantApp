import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:io';



class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  TextEditingController _imageController = TextEditingController();


  Future<void> _selectImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _imageController.text = pickedFile.path;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('AssistantApp'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'Add Post',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 30,
                    letterSpacing: 10,
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
                      Icons.signpost,
                      color: Colors.indigo,
                      size: 25,
                    ),
                    hintText: 'Name Post',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _imageController,
                    decoration: InputDecoration(
                      labelText: 'Photo',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.image, size: 25, color: Colors.indigo,),
                        onPressed: _selectImage,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
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
                      Icons.comment,
                      color: Colors.indigo,
                      size: 25,
                    ),
                    hintText: 'Comment',
                    hintStyle: TextStyle(color: Colors.black38)),
                maxLines: 3,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
