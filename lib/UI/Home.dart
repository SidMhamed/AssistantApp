import 'package:AssistantApp/UI/Settings.dart';
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/me.png'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'SiM\'hamed Avdhil',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Sidmhamed00@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            ListTile(
              leading:IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.indigo,
                ), onPressed: () {},
              ),
              title: Text('Home'),
              onTap: () {
                print('Home click me');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:IconButton(
                icon: Icon(
                  Icons.post_add,
                  color: Colors.indigo,
                ), onPressed: () {},
              ),
              title: Text('Add Post'),
              onTap: () {
                print('Add Post click me');
                Navigator.of(context).pushNamedAndRemoveUntil('/AddPost', (Route<dynamic> route) => false);
              },
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.local_pharmacy,
                  color: Colors.indigo,
                ), onPressed: () {},
              ),
              title: Text('Pharmacy'),
              onTap: () {
                print('Pharmacy click me');
                Navigator.pop(context);
              },
            ),
            // ListTile(
            //   leading: IconButton(
            //     icon: Icon(
            //       Icons.account_circle,
            //       color: Colors.indigo,
            //     ), onPressed: () {},
            //   ),
            //   title: Text('Profile'),
            //   onTap: () {
            //     print('Profile click me');
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.indigo,
                ), onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SettingsPage()));
              },
              ),
              title: Text('Settings'),
              onTap: () {
                print('Settings click me');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Colors.indigo,
                ), onPressed: () {},
              ),
              title: Text('Logout'),
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil('/Login', (Route<dynamic> route) => false);
              },
            ),
          ],
        ),
      ),
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
