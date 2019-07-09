import 'package:flutter/material.dart';
import 'package:advertise/screens/regiter_screen.dart';
import 'package:advertise/models/user_models.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  FacebookLogin fbLogin = FacebookLogin();
  Future<void> signIn() async {
    final FacebookLoginResult result =
    await fbLogin.logInWithReadPermissions(['email', 'public_profile']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=name,picture.width(800).height(800),first_name,last_name,email&access_token=${token}');
        final profile = jsonDecode(graphResponse.body);
        print(profile);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterForm()));
        break;
      case FacebookLoginStatus.cancelledByUser:
        print(FacebookLoginStatus.cancelledByUser);
        break;
      case FacebookLoginStatus.error:
        print(result.errorMessage);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xff212121),
            resizeToAvoidBottomPadding: false,
            body: Container(
              //margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 60.0),
                      Container(
                        height: 300,
                        width: 400,
                        child: Image.asset(
                          "images/bacground_1.png",
                        ),
                      ),
                      Row(children: <Widget>[
                        SizedBox(
                          width: 100,
                        )
                      ]),
                      //SizedBox(height: 50.0),
                      IconButton(
                        onPressed: (){signIn();},
                        iconSize: 300,
                        icon: Image.asset(
                          'images/sign-in-with-facebook-png.png',
                        ),
                      ),
                    ]))));
  }
}
