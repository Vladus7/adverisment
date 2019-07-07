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
        primarySwatch: Colors.teal,
        canvasColor: Colors.transparent,
      ),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: LoginScreen(),
      ),
    );
  }
}
