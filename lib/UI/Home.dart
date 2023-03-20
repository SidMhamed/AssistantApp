import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('AssistantApp'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30, top: 5, right: 30, bottom: 5),
        child: ListView(
          children: [
            Card(
              margin: EdgeInsets.all(10),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/usser.jpg'),
                  ),
                  Text(
                    'Card Title',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 30,

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'In Flutter, you can use a Card widget to display a material design.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/usser.jpg'),
                  ),
                  Text(
                    'Card Title',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                        'In Flutter, you can use a Card widget to display a material design',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                  ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/usser.jpg'),
                  ),
                  Text(
                    'Card Title',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'In Flutter, you can use a Card widget to display a material design',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                  ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/usser.jpg'),
                  ),
                  Text(
                    'Card Title',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'In Flutter, you can use a Card widget to display a material design',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
