import 'package:flutter/material.dart';
import 'UI/drawer.dart';
import 'UI/home.dart';
import 'UI/homescreen.dart';
import 'UI/profile.dart';
import 'UI/test.dart';

main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  Widget build(BuildContext context) {
    return profileApp();
  }
}
