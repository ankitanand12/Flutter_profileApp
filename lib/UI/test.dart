import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

testApp() {
  var micIcon = Icon(
    Icons.mic,
    size: 30.0,
  );
  var notiIcon = Icon(
    Icons.notifications_active,
    size: 30.0,
  );

  // FlutterStatusbarcolor.setStatusBarColor(Colors.pink);
  // if (useWhiteForeground(Colors.green[400])) {
  //   FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  // } else {
  //   FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  // }

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

  touchMe() {
    print("Mic is Not Active Now");
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

  flot() {
    Fluttertoast.showToast(
        msg: "Thanks For Your LOVE",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  var micButton = IconButton(
    icon: micIcon,
    onPressed: touchMe,
  );

  var mybody = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(
              'https://raw.githubusercontent.com/iamurankit/myimage/master/WhatsApp%20Image%202020-03-05%20at%207.41.48%20PM.jpeg',
              width: 150,
            ),
            Image.network(
              'https://raw.githubusercontent.com/iamurankit/image/master/wp2811868-indian-flag-with-dark-background-hd-pics.jpg',
              width: 150,
            ),
            Image.network(
              'https://raw.githubusercontent.com/iamurankit/myimage/master/IMG_0384.jpg',
              width: 150,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(
              'https://raw.githubusercontent.com/iamurankit/myimage/master/IMG_0384.jpg',
              width: 150,
            ),
            Image.network(
              'https://raw.githubusercontent.com/iamurankit/myimage/master/WhatsApp%20Image%202020-03-05%20at%207.41.48%20PM.jpeg',
              width: 150,
            ),
            Image.network(
              'https://raw.githubusercontent.com/iamurankit/flutter_image/master/1000px-Apple_logo_black.svg.png',
              width: 150,
            ),
          ],
        ),
      ],
    ),
  );

  var myappBar = AppBar(
      backgroundColor: Colors.pink,
      title: Text('Testing App Pvt.Ltd'),
      actions: <Widget>[
        notiIcon,
        micButton,
      ]);

  var flotActBotton = FloatingActionButton.extended(
    onPressed: () {
      flot();
    },
    label: Text('Love'),
    icon: Icon(Icons.favorite),
    backgroundColor: Colors.pinkAccent,
  );

  var myHome = Scaffold(
    backgroundColor: Colors.cyan[300],
    appBar: myappBar,
    body: Center(child: mybody),
    floatingActionButton: flotActBotton,
    drawer: mydrawer,
    bottomNavigationBar: bottomBar,
  );

  var mydesign = MaterialApp(
    home: myHome,
    debugShowCheckedModeBanner: false,
  );
  return mydesign;
}
