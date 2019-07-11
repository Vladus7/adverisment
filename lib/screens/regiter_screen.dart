import 'package:flutter/material.dart';
import 'package:advertise/models/flutter_hcvcolor_picker.dart';
import 'package:advertise/screens/home_screen.dart';

class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff212121),
          title: Text('Edit information'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => MapSample(),
                      //RegisterForm()
                    ));
              },
            )
          ],
        ),
        backgroundColor: Color(0xff424242),
        body: ListView(children: <Widget>[
          Container(
              child: Column(children: <Widget>[
            Container(
                //height: 550,
                child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Row(children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Text('Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ))
                ]),
                SizedBox(
                  height: 15,
                ),
                Container(
                    // margin: EdgeInsets.only(left: 10.0, right: 10.0,),
                    decoration: BoxDecoration(color: Color(0xff212121)),
                    child: Container(
                        margin: EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                        ),
                        child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Container(
                                        width: 250.0,
                                        child: Theme(
                                          data: new ThemeData(
                                              primaryColor: Colors.teal,
                                              hintColor: Colors.white),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "First Name",
                                                fillColor: Colors.white
                                                //errorText: snapshot.error
                                                ),
                                          ),
                                        )),
                                    Container(
                                        width: 250.0,
                                        child: Theme(
                                            data: new ThemeData(
                                                primaryColor: Colors.teal,
                                                hintColor: Colors.white),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: "Last Name",
                                                //errorText: snapshot.error
                                              ),
                                            )))
                                  ]),
                                  //SizedBox(width: 20.0,),
                                  Container(
                                      margin: EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                      ),
                                      width: 100.0,
                                      height: 100.0,
                                      child: Image.asset(
                                        'images/batmen.jpg',
                                      )),
                                ],
                              ),
                              Theme(
                                  data: new ThemeData(
                                      primaryColor: Colors.teal,
                                      hintColor: Colors.white),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Country",
                                      filled: false,
                                      //errorText: snapshot.error
                                    ),
                                  )),
                              Theme(
                                  data: new ThemeData(
                                      primaryColor: Colors.teal,
                                      hintColor: Colors.white),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      filled: false,
                                      hintText: "City",
                                      //errorText: snapshot.error
                                    ),
                                  )),
                              Theme(
                                  data: new ThemeData(
                                      primaryColor: Colors.teal,
                                      hintColor: Colors.white),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      filled: false,
                                      hintText: "Email",
                                      //errorText: snapshot.error
                                    ),
                                  )),
                              SizedBox(
                                height: 15.0,
                              ),
                            ])))
              ],
            )),
            SizedBox(
              height: 15,
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 30,
              ),
              Text('License',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ))
            ]),
            SizedBox(
              height: 15,
            ),
            Container(
                // margin: EdgeInsets.only(left: 10.0, right: 10.0,),
                decoration: BoxDecoration(color: Color(0xff212121)),
                child: Container(
                    margin: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Column(children: <Widget>[
                                Container(
                                    width: 250.0,
                                    child: Theme(
                                      data: new ThemeData(
                                          primaryColor: Colors.teal,
                                          hintColor: Colors.white),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Licence Numder",
                                            fillColor: Colors.white
                                            //errorText: snapshot.error
                                            ),
                                      ),
                                    )),
                                Container(
                                    width: 250.0,
                                    child: Theme(
                                        data: new ThemeData(
                                            primaryColor: Colors.teal,
                                            hintColor: Colors.white),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "License Country",
                                            //errorText: snapshot.error
                                          ),
                                        )))
                              ]),
                              //SizedBox(width: 20.0,),
                              Container(
                                  margin: EdgeInsets.only(
                                    left: 10.0,
                                    right: 10.0,
                                  ),
                                  width: 100.0,
                                  height: 100.0,
                                  child: Image.asset(
                                    'images/batmen.jpg',
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ]))),
            SizedBox(
              height: 15,
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 30,
              ),
              Text('Car',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ))
            ]),
            SizedBox(
              height: 15,
            ),
            Container(
                // margin: EdgeInsets.only(left: 10.0, right: 10.0,),
                decoration: BoxDecoration(color: Color(0xff212121)),
                child: Container(
                    margin: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 10.0,
                          ),
                          Theme(
                              data: new ThemeData(
                                  primaryColor: Colors.teal,
                                  hintColor: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Car brand",
                                  filled: false,
                                  //errorText: snapshot.error
                                ),
                              )),
                          Theme(
                              data: new ThemeData(
                                  primaryColor: Colors.teal,
                                  hintColor: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: false,
                                  hintText: "Car model",
                                  //errorText: snapshot.error
                                ),
                              )),
                          Theme(
                              data: new ThemeData(
                                  primaryColor: Colors.teal,
                                  hintColor: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: false,
                                  hintText: "Car number",
                                  //errorText: snapshot.error
                                ),
                              )),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              ButtonTheme(
                                minWidth: 160,
                                height: 50,
                                child:
                              RaisedButton(
                                child: Text('TAXI', style: TextStyle(color: Color(0xfffafafa))),
                                onPressed: null,
                                color: Color(0xff212121),
                              ),),
                              SizedBox(
                                width: 10,
                              ),
                              ButtonTheme(
                                minWidth: 160,
                                height: 50,
                                child:
                              RaisedButton(
                                child: Text('CAR COLOR', style: TextStyle(color: Color(0xfffafafa))),
                                onPressed: (){ Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                    builder: (context) => AskColor(),));},
                                color: Color(0xff212121),
                              ),)
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ])))
          ]))
        ]));

  }
}

class AskColor extends StatefulWidget {
  @override
  _AskColorState createState() => _AskColorState();
}

class _AskColorState extends State<AskColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff414141),
        body: ColorPicker(color: Colors.blue, onChanged: (value){
          print(value);
        },));
  }
}
