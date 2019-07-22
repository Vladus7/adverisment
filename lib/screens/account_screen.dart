import 'package:flutter/material.dart';
import 'package:sliver_fab/sliver_fab.dart';
import 'package:advertise/screens/regiter_screen.dart';
import 'package:flutter/cupertino.dart';


class AccountScreen extends StatefulWidget {
  @override
  AccountScreenState createState() {
    return new AccountScreenState();
  }
}

class AccountScreenState extends State<AccountScreen> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xff424242),
      body: new Stack(
        children: <Widget>[
          new CustomScrollView(
            controller: _scrollController,
            slivers: [
              new SliverAppBar(
                leading: new IconButton(
                  icon: new Icon(CupertinoIcons.left_chevron, color: Color(0xfffafafa)),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                backgroundColor: Color(0xff171918),
                expandedHeight: 156.0,////////////////
                pinned: true,
                flexibleSpace: new FlexibleSpaceBar(
                  //centerTitle: true,
                  title: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text("But Vlad",
                          style: TextStyle(color: Color(0xfffafafa))),
SizedBox(height: 5,),
//                      const Text("Poland, qwer",
//                          style: TextStyle(
//                              color: Color(0xfffafafa),
//                              fontSize: 10.0)),
                    ],
                  ),
                  background: Stack(children:<Widget>[ Container(
                    width: double.infinity,
                      child:Image.asset(
                    "images/batmen.jpg",
                    fit: BoxFit.cover,
                  )),
                    Padding(
                        padding: EdgeInsets.only(
                            top:156, left: 65
                        ),
                        child:
                  Text("Poland, qwer",
                      style: TextStyle(
                          color: Color(0xfffafafa),
                          fontSize: 12.0)))
                  ])
                ),
              ),
              SliverList(
                  delegate: new SliverChildListDelegate(
                      new List.generate(
                          1,
                              (int index) =>
                              Container(
                                  child:
                                  Column(children: <Widget>[
                                    ListTile(
                                        title: Text('Driving information',
                                            style: TextStyle(
                                                color: Color(0xfffafafa),
                                                fontSize: 20.0))),
                                    Container(
                                        color: Color(0xff171918),
                                        child: Column(
                                          children: <Widget>[
                                            ListTile(
                                              leading: Icon(
                                                Icons.directions_car,
                                                color: Color(0xfffafafa),
                                              ),
                                              title: Text('qwerty',
                                                  style: TextStyle(
                                                    color: Color(0xfffafafa),
                                                  )),
                                              subtitle: Text('Current car',
                                                  style: TextStyle(
                                                    color: Color(0xff767F88),
                                                  )),
                                            ),
                                            ListTile(
                                              leading: Image.asset(
                                                'images/NMR.png',
                                                width: 20,
                                                //  fit: BoxFit.cover,
                                              ),
                                              title: Text('12345678',
                                                  style: TextStyle(
                                                    color: Color(0xfffafafa),
                                                  )),
                                              subtitle: Text('Car plate number',
                                                  style: TextStyle(
                                                    color: Color(0xff767F88),
                                                  )),
                                            ),
                                            ListTile(
                                              leading: Icon(
                                                CupertinoIcons.profile_circled,
                                                color: Color(0xfffafafa),
                                              ),
                                              title: Text('qwerty',
                                                  style: TextStyle(
                                                    color: Color(0xfffafafa),
                                                  )),
                                              subtitle: Text('License information',
                                                  style: TextStyle(
                                                    color: Color(0xff767F88),
                                                  )),
                                            ),
                                          ],
                                        )),
                                    ListTile(
                                        leading: Text('Campaing',
                                            style: TextStyle(
                                                color: Color(0xfffafafa), fontSize: 20)),
                                        trailing: Text('Archive',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff31803f),
                                            ))),
                                    Container(
                                      //margin: EdgeInsets.symmetric(vertical: 20.0),
                                        height: 365.0,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xff171918),
                                                  borderRadius:
                                                  new BorderRadius.circular(5.0)),
                                              margin: EdgeInsets.only(
                                                  left: 10.0, right: 10.0),
                                              height: 380,
                                              width: 300.0,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.0, right: 10.0),
                                                child: Column(
                                                  children: <Widget>[
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: Text('Sixth campaing',
                                                            style: TextStyle(
                                                                color: Color(0xfffafafa),
                                                                fontSize: 23.0))),
                                                    Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: Text(
                                                            'Coca-Cola - Krakov, Poland',
                                                            style: TextStyle(
                                                              color: Color(0xff767F88),
                                                            ))),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      color: Color(0xff767F88),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: Text(
                                                            'Coca-Cola - Krakov, Poland, Coca-Cola - Krakov, Poland,Coca-Cola - Krakov, Poland, Coca-Cola - Krakov, Poland,',
                                                            style: TextStyle(
                                                              color: Color(0xff767F88),
                                                            ))),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      color: Color(0xff767F88),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 25.0, right: 20.0),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Column(children: <Widget>[
                                                            Text(
                                                              '6,3',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa),
                                                                  fontSize: 20),
                                                            ),
                                                            Text(
                                                              'PLN',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa)),
                                                            )
                                                          ]),
                                                          SizedBox(
                                                            width: 60,
                                                          ),
                                                          Column(children: <Widget>[
                                                            Text(
                                                              '100',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa),
                                                                  fontSize: 20),
                                                            ),
                                                            Text(
                                                              'Km',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa)),
                                                            )
                                                          ]),
                                                          SizedBox(
                                                            width: 60,
                                                          ),
                                                          Column(children: <Widget>[
                                                            Text(
                                                              '1.6',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa),
                                                                  fontSize: 20),
                                                            ),
                                                            Text(
                                                              'PLN/Km',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa)),
                                                            ),
                                                          ])
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    ButtonTheme(
                                                        minWidth: double.infinity,
                                                        height: 50.0,
                                                        child: RaisedButton(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                  30.0),
                                                              side: BorderSide(
                                                                  width: 1,
                                                                  color:
                                                                  Color(0xff31803f))),
                                                          color: Color(0xff31803f),
                                                          onPressed: () {},
                                                          child: Text(
                                                            'ABORT',
                                                            style: TextStyle(
                                                              color: Color(0xfffafafa),
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        )),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xff171918),
                                                  borderRadius:
                                                  new BorderRadius.circular(5.0)),
                                              margin: EdgeInsets.only(
                                                  left: 10.0, right: 10.0),
                                              height: 350,
                                              width: 300.0,
                                              //color: Color(0xff171918),
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.0, right: 10.0),
                                                child: Column(
                                                  children: <Widget>[
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: Text('Sixth campaing',
                                                            style: TextStyle(
                                                                color: Color(0xfffafafa),
                                                                fontSize: 23.0))),
                                                    Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: Text(
                                                            'Coca-Cola - Krakov, Poland',
                                                            style: TextStyle(
                                                              color: Color(0xff767F88),
                                                            ))),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      color: Color(0xff767F88),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: Text(
                                                            'Coca-Cola - Krakov, Poland, Coca-Cola - Krakov, Poland,Coca-Cola - Krakov, Poland, Coca-Cola - Krakov, Poland,',
                                                            style: TextStyle(
                                                              color: Color(0xff767F88),
                                                            ))),
                                                    SizedBox(
                                                      height: 35,
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      color: Color(0xff767F88),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 25.0, right: 20.0),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Column(children: <Widget>[
                                                            Text(
                                                              '6,3',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa),
                                                                  fontSize: 20),
                                                            ),
                                                            Text(
                                                              'PLN',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa)),
                                                            )
                                                          ]),
                                                          SizedBox(
                                                            width: 60,
                                                          ),
                                                          Column(children: <Widget>[
                                                            Text(
                                                              '100',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa),
                                                                  fontSize: 20),
                                                            ),
                                                            Text(
                                                              'Km',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa)),
                                                            )
                                                          ]),
                                                          SizedBox(
                                                            width: 60,
                                                          ),
                                                          Column(children: <Widget>[
                                                            Text(
                                                              '1.6',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa),
                                                                  fontSize: 20),
                                                            ),
                                                            Text(
                                                              'PLN/Km',
                                                              style: TextStyle(
                                                                  color:
                                                                  Color(0xfffafafa)),
                                                            ),
                                                          ])
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 25,
                                                    ),
                                                    ButtonTheme(
                                                        minWidth: double.infinity,
                                                        height: 50.0,
                                                        child: RaisedButton(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                  30.0),
                                                              side: BorderSide(
                                                                  width: 1,
                                                                  color:
                                                                  Color(0xff31803f))),
                                                          color: Color(0xff31803f),
                                                          onPressed: () {},
                                                          child: Text(
                                                            'ABORT',
                                                            style: TextStyle(
                                                              color: Color(0xfffafafa),
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        )),
                                                    SizedBox(
                                                      height: 20,
                                                    )
                                                  ],
                                                ),
                                              ),
//                        ),
//                      ],
//                    ),
                                            ),
                                          ],
                                        )),
                                    ListTile(
                                        title: Text('Statistics',
                                            style: TextStyle(
                                                color: Color(0xfffafafa),
                                                fontSize: 20.0))),
                                    Container(
                                        color: Color(0xff171918),
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 40,
                                                ),
                                                Column(children: <Widget>[
                                                  Row(children: <Widget>[
                                                    Icon(Icons.landscape,
                                                        color: Color(0xfffafafa)),
                                                    Text(
                                                      '213.71Km',
                                                      style: TextStyle(
                                                          color: Color(0xfffafafa),
                                                          fontSize: 20),
                                                    ),
                                                  ]),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    'You travelled',
                                                    style: TextStyle(
                                                        color: Color(0xff424242)),
                                                  )
                                                ]),
                                                SizedBox(
                                                  width: 60,
                                                ),
                                                Column(children: <Widget>[
                                                  Row(children: <Widget>[
                                                    Icon(Icons.monetization_on,
                                                        color: Color(0xfffafafa)),
                                                    Text(
                                                      '20.8PLN',
                                                      style: TextStyle(
                                                          color: Color(0xfffafafa),
                                                          fontSize: 20),
                                                    ),
                                                  ]),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    'PLN Earned',
                                                    style: TextStyle(
                                                        color: Color(0xff424242)),
                                                  ),
                                                ])
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        )),
                                    SizedBox(height: 20,)
                                  ]))))),
            ],
          ),
          _buildFab(),
        ],
      ),
    );
  }

  Widget _buildFab() {
    //starting fab position
    final double defaultTopMargin = 156.0 - 4.0;
    //pixels from top where scaling should start
    final double scaleStart = 58.0;
    //pixels from top where scaling should end
    final double scaleEnd = scaleStart / 2;

    double top = defaultTopMargin;
    double scale = 1.0;
    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;
      if (offset < defaultTopMargin - scaleStart) {
        //offset small => don't scale down
        scale = 1.0;
      } else if (offset < defaultTopMargin - scaleEnd) {
        //offset between scaleStart and scaleEnd => scale down
        scale = (defaultTopMargin - scaleEnd - offset) / scaleEnd;
      } else {
        //offset passed scaleEnd => hide fab
        scale = 0.0;
      }
    }

    return new Positioned(
      top: top,
      right: 16.0,
      child: new Transform(
        transform: new Matrix4.identity()..scale(scale),
        alignment: Alignment.center,
        child: new FloatingActionButton(
          backgroundColor: Color(0xff31803f),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterForm()));},
          child: new Icon(Icons.create),
        ),
      ),
    );
  }
}