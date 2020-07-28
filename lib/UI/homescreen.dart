import 'package:flutter/material.dart';

homeScreenApp() {
  var micIcon = Icon(
    Icons.mic,
    size: 35.0,
  );
  var drawer = Icon(
    Icons.format_align_left,
    size: 35.0,
  );

  touchMe() {
    print("Mic is Not Active Now");
  }

  var micButton = IconButton(
    icon: micIcon,
    onPressed: touchMe,
  );

  var myappBar = AppBar(
      backgroundColor: Colors.pink[300],
      title: Text('My App'),
      leading: drawer,
      actions: <Widget>[micButton]);

  var myPage = Container(
    // color: Colors.blue,
    width: 400,
    height: 400,
    alignment: Alignment.bottomCenter,
    child: Text(
      'Ankit',
      style: TextStyle(
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
        color: Colors.red[800],
      ),
    ),
    decoration: BoxDecoration(
      color: Colors.cyan[100],
      border: Border.all(
        color: Colors.black,
        width: 5,
      ),
      borderRadius: BorderRadius.circular(20.0),
      image: DecorationImage(
        fit: BoxFit.contain,
        image: NetworkImage(
            'https://raw.githubusercontent.com/iamurankit/myimage/master/WhatsApp%20Image%202020-03-05%20at%207.41.48%20PM.jpeg'),
      ),
    ),
  );

  var myHome = Scaffold(
    backgroundColor: Colors.cyan[300],
    appBar: myappBar,
    body: Center(child: myPage),
  );

  var mydesign = MaterialApp(
    home: myHome,
    debugShowCheckedModeBanner: false,
  );
  return mydesign;
}
