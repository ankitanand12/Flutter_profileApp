import 'package:flutter/material.dart';

homeApp() {
  var myText = Text(
    'My App',
    // textDirection: TextDirection.ltr,
    // textAlign: TextAlign.center,
  );
  touchMe() {
    print("Mic is Not Active Now");
  }

  var url =
      'https://raw.githubusercontent.com/iamurankit/myimage/master/WhatsApp%20Image%202020-03-05%20at%207.41.48%20PM.jpeg';

  var myImage = Image.network(
    url,
    width: 500,
    height: 500,
  );

  var micIcon = Icon(
    Icons.mic,
    size: 35.0,
  );
  var drawer = Icon(
    Icons.format_align_left,
    size: 35.0,
  );
  // var cameraIcon = Icon(Icons.camera_enhance);
  // var  cameraButton = IconButton(icon: cameraIcon, onPressed: camera);
  var micButton = IconButton(icon: micIcon, onPressed: touchMe);

  var floActBotton = FloatingActionButton.extended(
    onPressed: () {},
    label: Text("Give Love"),
    icon: Icon(Icons.favorite),
    backgroundColor: Colors.pinkAccent,
  );

  var myAppBar = AppBar(
    title: myText,
    backgroundColor: Colors.pinkAccent,
    leading: drawer,
    actions: <Widget>[micButton],
    centerTitle: true,
  );

  var homesc = Scaffold(
    appBar: myAppBar,
    body: myImage,
    backgroundColor: Colors.cyan[200],
    floatingActionButton: floActBotton,
  );

  var mydesign = MaterialApp(
    home: homesc,
    debugShowCheckedModeBanner: false,
  );

  return mydesign;
}
