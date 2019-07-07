import 'package:flutter/material.dart';
import 'package:advertise/screens/regiter_screen.dart';
import 'package:flutter/cupertino.dart';

class AccountScreen extends StatefulWidget {
  @override
  AccountScreenState createState() => AccountScreenState();
}

class AccountScreenState extends State<AccountScreen> {
  double appBarHeight = 200.0;

//  @override
//  Widget build(BuildContext context) {
//    return new Stack(
//      children: <Widget>[
//        new Scaffold(
//            backgroundColor: Color(0xff424242),
//            appBar: new PreferredSize(
//                preferredSize:
//                    new Size(MediaQuery.of(context).size.width, appBarHeight),
//                child: new Container(
//                  margin: const EdgeInsets.only(top: 30.0),
//                  child: Column(
//                    //mainAxisSize: MainAxisSize.min,
//                    children: <Widget>[
//                      SizedBox(
//                        height: 140,
//                      ),
//                      const Text("But Vlad",
//                          style: TextStyle(
//                              color: Color(0xfffafafa), fontSize: 22.0)),
//                      const Text("Poland, qwer",
//                          style: TextStyle(
//                              color: Color(0xfffafafa), fontSize: 16.0)),
//                    ],
//                  ),
//                  decoration: BoxDecoration(
//                      image: DecorationImage(
//                    image: AssetImage(
//                      "images/batmen.jpg",
//                    ),
//                    fit: BoxFit.cover,
//                  )),
//                )),
//            body: ListView(children: <Widget>[
//              Container(
//                  child: Column(
//                children: <Widget>[
//                  ListTile(
//                      title: Text('Driving information',
//                          style: TextStyle(
//                              color: Color(0xfffafafa), fontSize: 20.0))),
//                  Container(
//                      color: Color(0xff171918),
//                      child: Column(
//                        children: <Widget>[
//                          ListTile(
//                            leading: Icon(
//                              Icons.directions_car,
//                              color: Color(0xfffafafa),
//                            ),
//                            title: Text('qwerty',
//                                style: TextStyle(
//                                  color: Color(0xfffafafa),
//                                )),
//                            subtitle: Text('Current car',
//                                style: TextStyle(
//                                  color: Color(0xff767F88),
//                                )),
//                          ),
//                          ListTile(
//                            leading: Image.asset(
//                              'images/NMR.png',
//                              width: 30,
//                              //  fit: BoxFit.cover,
//                            ),
//                            title: Text('12345678',
//                                style: TextStyle(
//                                  color: Color(0xfffafafa),
//                                )),
//                            subtitle: Text('Car plate number',
//                                style: TextStyle(
//                                  color: Color(0xff767F88),
//                                )),
//                          ),
//                          ListTile(
//                            leading: Icon(
//                              CupertinoIcons.profile_circled,
//                              color: Color(0xfffafafa),
//                            ),
//                            title: Text('qwerty',
//                                style: TextStyle(
//                                  color: Color(0xfffafafa),
//                                )),
//                            subtitle: Text('License information',
//                                style: TextStyle(
//                                  color: Color(0xff767F88),
//                                )),
//                          ),
//                        ],
//                      )),
//                  ListTile(
//                      leading: Text('Campaing',
//                          style: TextStyle(
//                              color: Color(0xfffafafa), fontSize: 20)),
////              ))),SizedBox(width: 100,),ListTile(title:
//                      trailing: Text('Archive',
//                          style: TextStyle(
//                            fontSize: 20,
//                            color: Color(0xff31803f),
//                          ))),
//                  Container(
//                    //margin: EdgeInsets.symmetric(vertical: 20.0),
//                    height: 350.0,
//                    child: ListView(
//                      scrollDirection: Axis.horizontal,
//                      children: <Widget>[
//                        Container(
//                          decoration: BoxDecoration(
//                              color: Color(0xff171918),
//                              borderRadius: new BorderRadius.circular(10.0)),
//                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
//                          height: 350,
//                          width: 300.0,
//                          //color: Color(0xff171918),
//                          child: Container(
//                            margin: EdgeInsets.only(left: 10.0, right: 10.0),
//                            child: Column(
//                              children: <Widget>[
//                                SizedBox(
//                                  height: 20,
//                                ),
//                                Align(
//                                    alignment: Alignment.centerLeft,
//                                    child: Text('Sixth campaing',
//                                        style: TextStyle(
//                                            color: Color(0xfffafafa),
//                                            fontSize: 23.0))),
//                                Align(
//                                    alignment: Alignment.centerLeft,
//                                    child: Text('Coca-Cola - Krakov, Poland',
//                                        style: TextStyle(
//                                          color: Color(0xff767F88),
//                                        ))),
//                                SizedBox(
//                                  height: 20,
//                                ),
//                                Divider(
//                                  height: 2.0,
//                                  color: Color(0xff767F88),
//                                ),
//                                SizedBox(
//                                  height: 30,
//                                ),
//                                Align(
//                                    alignment: Alignment.centerLeft,
//                                    child: Text(
//                                        'Coca-Cola - Krakov, Poland, Coca-Cola - Krakov, Poland,Coca-Cola - Krakov, Poland, Coca-Cola - Krakov, Poland,',
//                                        style: TextStyle(
//                                          color: Color(0xff767F88),
//                                        ))),
//                                SizedBox(
//                                  height: 30,
//                                ),
//                                Divider(
//                                  height: 2.0,
//                                  color: Color(0xff767F88),
//                                ),
//                                SizedBox(
//                                  height: 30,
//                                ),
//                                Container(
//                                  margin:
//                                      EdgeInsets.only(left: 25.0, right: 20.0),
//                                  child: Row(
//                                    children: <Widget>[
//                                      Column(children: <Widget>[
//                                        Text(
//                                          '6,3',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa),
//                                              fontSize: 20),
//                                        ),
//                                        Text(
//                                          'PLN',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa)),
//                                        )
//                                      ]),
//                                      SizedBox(
//                                        width: 60,
//                                      ),
//                                      Column(children: <Widget>[
//                                        Text(
//                                          '100',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa),
//                                              fontSize: 20),
//                                        ),
//                                        Text(
//                                          'Km',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa)),
//                                        )
//                                      ]),
//                                      SizedBox(
//                                        width: 60,
//                                      ),
//                                      Column(children: <Widget>[
//                                        Text(
//                                          '1.6',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa),
//                                              fontSize: 20),
//                                        ),
//                                        Text(
//                                          'PLN/Km',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa)),
//                                        ),
//                                      ])
//                                    ],
//                                  ),
//                                ),
//                                SizedBox(
//                                  height: 30,
//                                ),
//                                ButtonTheme(
//                                    minWidth: double.infinity,
//                                    height: 50.0,
//                                    child: RaisedButton(
//                                      shape: RoundedRectangleBorder(
//                                          borderRadius:
//                                              BorderRadius.circular(30.0),
//                                          side: BorderSide(
//                                              width: 1,
//                                              color: Color(0xff31803f))),
//                                      color: Color(0xff31803f),
//                                      onPressed: () {},
//                                      child: Text(
//                                        'ABORT',
//                                        style: TextStyle(
//                                          color: Color(0xfffafafa),
//                                          fontSize: 15,
//                                        ),
//                                      ),
//                                    )),
//                              ],
//                            ),
//                          ),
//                        ),
//                        Container(
//                          decoration: BoxDecoration(
//                              color: Color(0xff171918),
//                              borderRadius: new BorderRadius.circular(10.0)),
//                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
//                          height: 350,
//                          width: 300.0,
//                          //color: Color(0xff171918),
//                          child: Container(
//                            margin: EdgeInsets.only(left: 10.0, right: 10.0),
//                            child: Column(
//                              children: <Widget>[
//                                SizedBox(
//                                  height: 20,
//                                ),
//                                Align(
//                                    alignment: Alignment.centerLeft,
//                                    child: Text('Sixth campaing',
//                                        style: TextStyle(
//                                            color: Color(0xfffafafa),
//                                            fontSize: 23.0))),
//                                Align(
//                                    alignment: Alignment.centerLeft,
//                                    child: Text('Coca-Cola - Krakov, Poland',
//                                        style: TextStyle(
//                                          color: Color(0xff767F88),
//                                        ))),
//                                SizedBox(
//                                  height: 20,
//                                ),
//                                Divider(
//                                  height: 2.0,
//                                  color: Color(0xff767F88),
//                                ),
//                                SizedBox(
//                                  height: 30,
//                                ),
//                                Align(
//                                    alignment: Alignment.centerLeft,
//                                    child: Text(
//                                        'Coca-Cola - Krakov, Poland, Coca-Cola - Krakov, Poland,Coca-Cola - Krakov, Poland, Coca-Cola - Krakov, Poland,',
//                                        style: TextStyle(
//                                          color: Color(0xff767F88),
//                                        ))),
//                                SizedBox(
//                                  height: 30,
//                                ),
//                                Divider(
//                                  height: 2.0,
//                                  color: Color(0xff767F88),
//                                ),
//                                SizedBox(
//                                  height: 30,
//                                ),
//                                Container(
//                                  margin:
//                                      EdgeInsets.only(left: 25.0, right: 20.0),
//                                  child: Row(
//                                    children: <Widget>[
//                                      Column(children: <Widget>[
//                                        Text(
//                                          '6,3',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa),
//                                              fontSize: 20),
//                                        ),
//                                        Text(
//                                          'PLN',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa)),
//                                        )
//                                      ]),
//                                      SizedBox(
//                                        width: 60,
//                                      ),
//                                      Column(children: <Widget>[
//                                        Text(
//                                          '100',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa),
//                                              fontSize: 20),
//                                        ),
//                                        Text(
//                                          'Km',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa)),
//                                        )
//                                      ]),
//                                      SizedBox(
//                                        width: 60,
//                                      ),
//                                      Column(children: <Widget>[
//                                        Text(
//                                          '1.6',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa),
//                                              fontSize: 20),
//                                        ),
//                                        Text(
//                                          'PLN/Km',
//                                          style: TextStyle(
//                                              color: Color(0xfffafafa)),
//                                        ),
//                                      ])
//                                    ],
//                                  ),
//                                ),
//                                SizedBox(
//                                  height: 30,
//                                ),
//                                ButtonTheme(
//                                    minWidth: double.infinity,
//                                    height: 50.0,
//                                    child: RaisedButton(
//                                      shape: RoundedRectangleBorder(
//                                          borderRadius:
//                                              BorderRadius.circular(30.0),
//                                          side: BorderSide(
//                                              width: 1,
//                                              color: Color(0xff31803f))),
//                                      color: Color(0xff31803f),
//                                      onPressed: () {},
//                                      child: Text(
//                                        'ABORT',
//                                        style: TextStyle(
//                                          color: Color(0xfffafafa),
//                                          fontSize: 15,
//                                        ),
//                                      ),
//                                    )),
//                              ],
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              )),
//              ListTile(
//                  title: Text('Statistics',
//                      style:
//                          TextStyle(color: Color(0xfffafafa), fontSize: 20.0))),
//              Container(
//                  color: Color(0xff171918),
//                  child:  Column(
//
//    children: <Widget>[ SizedBox(height: 20,),Row(
//                    children: <Widget>[
//                      SizedBox(width: 40,),
//                      Column(children: <Widget>[
//
//                        Row(children: <Widget>[
//
//                          Icon(Icons.landscape, color: Color(0xfffafafa)),
//                          Text(
//                            '213.71Km',
//                            style: TextStyle(
//                                color: Color(0xfffafafa), fontSize: 20),
//                          ),
//                        ]),
//                        Text(
//                          'You travelled',
//                          style: TextStyle(color: Color(0xfffafafa)),
//                        )
//                      ]),
//                      SizedBox(
//                        width: 60,
//                      ),
//                      Column(children: <Widget>[
//                        Row(children: <Widget>[
//                          Icon(Icons.monetization_on, color: Color(0xfffafafa)),
//                          Text(
//                            '20.8PLN',
//                            style: TextStyle(
//                                color: Color(0xfffafafa), fontSize: 20),
//                          ),
//                        ]),
//                        Text(
//                          'PLN Earned',
//                          style: TextStyle(color: Color(0xfffafafa)),
//                        ),
//                      ])
//                    ],
//                  ),SizedBox(height: 20,),],
//                  )),
//            ])),
//        new Positioned(
//          child: new FloatingActionButton(
//            child: Icon(
//              Icons.create,
//              color: Color(0xfffafafa),
//            ),
//            backgroundColor: Color(0xff31803f),
//            onPressed: () {
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => RegisterForm()));
//            },
//          ),
//          right: 10.0,
//          top: appBarHeight - 5.0,
//        )
//      ],
//    );
//  }
//}
  @override
  Widget build(BuildContext context) {
    return
      Stack(
      children: <Widget>[
        Scaffold(
//        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
//        floatingActionButton: FloatingActionButton(
//            child: Icon(
//              Icons.create,
//              color: Color(0xfffafafa),
//            ),
//            backgroundColor: Color(0xff31803f),
//            onPressed: () {
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => RegisterForm()));
//            },
//          ),
        backgroundColor: Color(0xff424242),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              appBarHeight = appBarHeight - 5.0;
              return <Widget>[
                SliverAppBar(
                    backgroundColor: Colors.grey[900].withOpacity(0.89),
                    expandedHeight: 200.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: Column(
//                          crossAxisAlignment: CrossAxisAlignment.stretch,
//                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text("But Vlad",
                                style: TextStyle(color: Color(0xfffafafa))),
                            const Text("Poland, qwer",
                                style: TextStyle(
                                    color: Color(0xfffafafa), fontSize: 10.0)),
                          ],
                        ),
                        background: Image.asset(
                          "images/batmen.jpg",
                          fit: BoxFit.cover,
                        )),

//                SliverPersistentHeader(
//                  delegate: _SliverAppBarDelegate(
//                    TabBar(
//                      labelColor: Colors.black87,
//                      unselectedLabelColor: Colors.grey,
//                      tabs: [
//                        Tab(text: "Champing"),
//                        Tab(text: "Archive"),
//                      ],
//                    ),
//                  ),
//                  pinned: true,
//                ),
                )];
            },
            body: ListView(children: <Widget>[
              Container(
                  child: Column(
                children: <Widget>[
                  ListTile(
                      title: Text('Driving information',
                          style: TextStyle(
                              color: Color(0xfffafafa), fontSize: 20.0))),
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
                              width: 30,
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
//              ))),SizedBox(width: 100,),ListTile(title:
                      trailing: Text('Archive',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff31803f),
                          ))),
                  Container(
                    //margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 350.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff171918),
                              borderRadius: new BorderRadius.circular(10.0)),
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          height: 350,
                          width: 300.0,
                          //color: Color(0xff171918),
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0, right: 10.0),
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
                                    child: Text('Coca-Cola - Krakov, Poland',
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
                                  margin:
                                      EdgeInsets.only(left: 25.0, right: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      Column(children: <Widget>[
                                        Text(
                                          '6,3',
                                          style: TextStyle(
                                              color: Color(0xfffafafa),
                                              fontSize: 20),
                                        ),
                                        Text(
                                          'PLN',
                                          style: TextStyle(
                                              color: Color(0xfffafafa)),
                                        )
                                      ]),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Column(children: <Widget>[
                                        Text(
                                          '100',
                                          style: TextStyle(
                                              color: Color(0xfffafafa),
                                              fontSize: 20),
                                        ),
                                        Text(
                                          'Km',
                                          style: TextStyle(
                                              color: Color(0xfffafafa)),
                                        )
                                      ]),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Column(children: <Widget>[
                                        Text(
                                          '1.6',
                                          style: TextStyle(
                                              color: Color(0xfffafafa),
                                              fontSize: 20),
                                        ),
                                        Text(
                                          'PLN/Km',
                                          style: TextStyle(
                                              color: Color(0xfffafafa)),
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
                                              BorderRadius.circular(30.0),
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xff31803f))),
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
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff171918),
                              borderRadius: new BorderRadius.circular(10.0)),
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          height: 350,
                          width: 300.0,
                          //color: Color(0xff171918),
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0, right: 10.0),
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
                                    child: Text('Coca-Cola - Krakov, Poland',
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
                                  margin:
                                      EdgeInsets.only(left: 25.0, right: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      Column(children: <Widget>[
                                        Text(
                                          '6,3',
                                          style: TextStyle(
                                              color: Color(0xfffafafa),
                                              fontSize: 20),
                                        ),
                                        Text(
                                          'PLN',
                                          style: TextStyle(
                                              color: Color(0xfffafafa)),
                                        )
                                      ]),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Column(children: <Widget>[
                                        Text(
                                          '100',
                                          style: TextStyle(
                                              color: Color(0xfffafafa),
                                              fontSize: 20),
                                        ),
                                        Text(
                                          'Km',
                                          style: TextStyle(
                                              color: Color(0xfffafafa)),
                                        )
                                      ]),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Column(children: <Widget>[
                                        Text(
                                          '1.6',
                                          style: TextStyle(
                                              color: Color(0xfffafafa),
                                              fontSize: 20),
                                        ),
                                        Text(
                                          'PLN/Km',
                                          style: TextStyle(
                                              color: Color(0xfffafafa)),
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
                                              BorderRadius.circular(30.0),
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xff31803f))),
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
              ListTile(
                  title: Text('Statistics',
                      style:
                          TextStyle(color: Color(0xfffafafa), fontSize: 20.0))),
              Container(
                  color: Color(0xff171918),
                  child:  Column(

    children: <Widget>[ SizedBox(height: 20,),Row(
                    children: <Widget>[
                      SizedBox(width: 40,),
                      Column(children: <Widget>[

                        Row(children: <Widget>[

                          Icon(Icons.landscape, color: Color(0xfffafafa)),
                          Text(
                            '213.71Km',
                            style: TextStyle(
                                color: Color(0xfffafafa), fontSize: 20),
                          ),
                        ]),
                        Text(
                          'You travelled',
                          style: TextStyle(color: Color(0xfffafafa)),
                        )
                      ]),
                      SizedBox(
                        width: 60,
                      ),
                      Column(children: <Widget>[
                        Row(children: <Widget>[
                          Icon(Icons.monetization_on, color: Color(0xfffafafa)),
                          Text(
                            '20.8PLN',
                            style: TextStyle(
                                color: Color(0xfffafafa), fontSize: 20),
                          ),
                        ]),
                        Text(
                          'PLN Earned',
                          style: TextStyle(color: Color(0xfffafafa)),
                        ),
                      ])
                    ],
                  ),SizedBox(height: 20,),],
                  )),
            ])),
        ),
        ),  new Positioned(
          child: new FloatingActionButton(
            child: Icon(
              Icons.create,
              color: Color(0xfffafafa),
            ),
            backgroundColor: Color(0xff31803f),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterForm()));
            },
          ),
          right: 10.0,
          top: appBarHeight - 5.0,
        )
      ],
    );
  }
}
