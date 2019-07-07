import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Notifications', style: TextStyle(color: Color(0xfffafafa))),
        backgroundColor: Color(0xff1d2120),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'First campign',
                      style: TextStyle(color: Color(0xfffafafa), fontSize: 20),
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Coca-Cola',
                      style: TextStyle(
                        color: Color(0xff767F88),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('We are waiting for you',
                        style: TextStyle(
                          color: Color(0xff767F88),
                        ))),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Soviet st 21,2019-05-04',
                        style: TextStyle(
                          color: Color(0xff767F88),
                        ))),
                Row(
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.check_mark,
                      color: Color(0xff31803f),
                    ),
                    Text('The compaign is completed',
                        style: TextStyle(
                          color: Color(0xff767F88),
                        )),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Color(0xff767F88),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'First campign',
                      style: TextStyle(color: Color(0xfffafafa), fontSize: 20),
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Coca-Cola',
                      style: TextStyle(
                        color: Color(0xff767F88),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('We are waiting for you',
                        style: TextStyle(
                          color: Color(0xff767F88),
                        ))),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Soviet st 21,2019-05-04',
                        style: TextStyle(
                          color: Color(0xff767F88),
                        ))),
                Row(
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.check_mark,
                      color: Color(0xff31803f),
                    ),
                    Text('The compaign is completed',
                        style: TextStyle(
                          color: Color(0xff767F88),
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff414141),/////////
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(CupertinoIcons.delete, color: Color(0xfffafafa)),
        backgroundColor: Color(0xff31803f),
      ),
    );
  }
}
