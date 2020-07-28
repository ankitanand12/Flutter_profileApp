import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

profileApp() {
  noti() {
    print('No NOtifications');
  }

  prof() {
    print('No Profile');
  }

  var mydrawer = Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.pink,
          ),
          child: Column(
            children: <Widget>[
              Text(
                'More Informations',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.network(
                'https://raw.githubusercontent.com/iamurankit/flutter_image/master/1000px-Apple_logo_black.svg.png',
                width: 50,
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.message,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text(
            'Messages',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.fingerprint,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text(
            'Profile',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.shopping_cart,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text(
            'Shopping Cart',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.account_balance_wallet,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text(
            'wallet',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.assignment,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text(
            'FAQ',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.help,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text(
            'Help Center',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text(
            'Settings',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );


  click() {
    Fluttertoast.showToast(
        msg: "You Selected Ankit Anand",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  var bottomBar = ConvexAppBar.badge(
    {
      0: '99+',
      1: Text(
        'hot',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          backgroundColor: Colors.orange,
        ),
      ),
      2: Colors.redAccent,
      3: Icons.assistant_photo,
    },
    style: TabStyle.reactCircle,
    curve: Curves.fastLinearToSlowEaseIn,
    backgroundColor: Colors.purple,
    items: [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.map, title: 'Discovery'),
      TabItem(icon: Icons.add, title: 'Add'),
      TabItem(icon: Icons.message, title: 'Message'),
      TabItem(icon: Icons.people, title: 'Profile'),
    ],
    initialActiveIndex: 2, //optional, default as 0
    onTap: (int i) => print('click index=$i'),
  );

  var mybody = Container(
    color: Colors.cyan[50],
    width: double.infinity,
    height: double.infinity,
    alignment: Alignment.center,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 50),
          alignment: Alignment.center,
          width: 300,
          height: 200,
          // color: Colors.blue,
          decoration: BoxDecoration(
            color: Colors.pink[400],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '  Ankit Anand',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.phone_iphone),
                  Text(
                    '8908908987',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text('  iamurankit@gmail.com'),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: click,
          child: Container(
            // margin: EdgeInsets.only(bottom: 00),
            // padding: EdgeInsets.only(left: 50),
            alignment: Alignment.center,
            width: 100,
            height: 100,
            // color: Colors.red,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.grey[400],
                width: 3,
              ),
              image: DecorationImage(
                  image: NetworkImage(
                    'https://github.com/iamurankit/myimage/raw/master/WhatsApp%20Image%202020-03-05%20at%207.41.48%20PM.jpeg',
                  ),
                  fit: BoxFit.fill),
            ),
          ),
        ),
      ],
    ),
  );

  var myappBAr = AppBar(
    backgroundColor: Colors.pink,
    title: Text('Student Profile'),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.notifications_active), onPressed: noti),
      IconButton(icon: Icon(Icons.account_circle), onPressed: prof),
    ],
  );

  var mydesign = Scaffold(
    appBar: myappBAr,
    body: mybody,
    bottomNavigationBar: bottomBar,
    drawer: mydrawer,
  );
  return MaterialApp(
    home: mydesign,
    debugShowCheckedModeBanner: false,
  );
}
