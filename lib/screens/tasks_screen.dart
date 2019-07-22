import 'package:flutter/material.dart';
import 'package:bottom_sheet_stateful/bottom_sheet_stateful.dart';
import 'package:flutter/cupertino.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(CupertinoIcons.left_chevron, color: Color(0xfffafafa)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Tasks', style: TextStyle(color: Color(0xfffafafa))),
        backgroundColor: Color(0xff1d2120),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xff171918),
            child: Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'First campign',
                        style:
                            TextStyle(color: Color(0xfffafafa), fontSize: 23),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Meizu, Poland, Warsawa',
                        style: TextStyle(
                          color: Color(0xff767F88),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Fifth camping ordered by Meizu inc',
                          style: TextStyle(
                            color: Color(0xff767F88),
                          ))),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 70,
                      ),
                      Column(children: <Widget>[
                        Text(
                          '100',
                          style:
                              TextStyle(color: Color(0xfffafafa), fontSize: 20),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Need Km',
                          style:
                              TextStyle(color: Color(0xfffafafa), fontSize: 11),
                        )
                      ]),
                      SizedBox(
                        width: 150,
                      ),
                      Column(children: <Widget>[
                        Text(
                          '1',
                          style:
                              TextStyle(color: Color(0xfffafafa), fontSize: 20),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'PLN/Km',
                          style:
                              TextStyle(color: Color(0xfffafafa), fontSize: 11),
                        ),
                      ])
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ButtonTheme(
                      minWidth: double.infinity,
                      height: 55.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side:
                                BorderSide(width: 1, color: Color(0xff31803f))),
                        color: Color(0xff31803f),
                        onPressed: () {},
                        child: Text(
                          'MORE',
                          style: TextStyle(
                            color: Color(0xfffafafa),
                            fontSize: 16,
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          Divider(),
          Container(
            color: Color(0xff171918),
            child: Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'First campign',
                        style:
                            TextStyle(color: Color(0xfffafafa), fontSize: 23),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Meizu, Poland, Warsawa',
                        style: TextStyle(
                          color: Color(0xff767F88),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Fifth camping ordered by Meizu inc',
                          style: TextStyle(
                            color: Color(0xff767F88),
                          ))),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 70,
                      ),
                      Column(children: <Widget>[
                        Text(
                          '100',
                          style:
                              TextStyle(color: Color(0xfffafafa), fontSize: 20),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Need Km',
                          style:
                              TextStyle(color: Color(0xfffafafa), fontSize: 11),
                        )
                      ]),
                      SizedBox(
                        width: 150,
                      ),
                      Column(children: <Widget>[
                        Text(
                          '1',
                          style:
                              TextStyle(color: Color(0xfffafafa), fontSize: 20),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'PLN/Km',
                          style:
                              TextStyle(color: Color(0xfffafafa), fontSize: 11),
                        ),
                      ])
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ButtonTheme(
                      minWidth: double.infinity,
                      height: 55.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side:
                                BorderSide(width: 1, color: Color(0xff31803f))),
                        color: Color(0xff31803f),
                        onPressed: () {},
                        child: Text(
                          'MORE',
                          style: TextStyle(
                            color: Color(0xfffafafa),
                            fontSize: 16,
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          Divider(),
        ],
        // ),
      ),
      backgroundColor: Color(0xff414141), /////////
    );
  }
}
