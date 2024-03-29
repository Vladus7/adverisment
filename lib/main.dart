import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:advertise/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
       //primarySwatch: Colors.teal,
        canvasColor: Colors.transparent,
      ),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: LoginScreen(),
      ),
    );
  }
}
//import 'package:flutter/material.dart';
//import 'package:advertise/ui/map_screen.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      theme: ThemeData(primarySwatch: Colors.blue),
//      home: MapScreen(),
//    );
//  }
//}
//import 'package:flutter/material.dart';
//import 'package:advertise/map_screen.dart';
//import 'package:map_view/map_view.dart';
//
//void main() {
//  MapView.setApiKey("google_map_key");
//  runApp(new MaterialApp(
//    debugShowCheckedModeBanner: false,
//    theme: new ThemeData(
//      primaryColor: const Color(0xFF02BB9F),
//      primaryColorDark: const Color(0xFF167F67),
//      accentColor: const Color(0xFF167F67),
//    ),
//    home: new MapScreen(),
//  ));
//}