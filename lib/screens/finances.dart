import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:advertise/screens/card_screen.dart';

class FinancesScreen extends StatefulWidget {
  @override
  _FinancesScreenState createState() => _FinancesScreenState();
}

class _FinancesScreenState extends State<FinancesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new
  GlobalKey<ScaffoldState>();

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              decoration: BoxDecoration(
                  color: Color(0xff171918),
                  borderRadius: new BorderRadius.only(
                      topLeft:  const  Radius.circular(25.0),
                      topRight: const  Radius.circular(25.0))),
              child: ListView(
                  children: <Widget>[
                    new ListTile(
                      title:  Text('Claim funds withdrawal', style: TextStyle(color: Color(0xfffafafa))),
                      trailing: IconButton(icon: Icon(CupertinoIcons.clear, color: Color(0xfffafafa),), onPressed: (){
                        Navigator.pop(context);
                        //Navigator.push(context,MaterialPageRoute(builder: (context) => CardScreen()));
                      }),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column( children: <Widget>[
                        SizedBox(height: 20,),
                        Container(
                            child: Theme(
                              data: new ThemeData(
                                  primaryColor: Colors.teal,
                                  hintColor:  Color(0xff767F88)),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Summary",
                                    fillColor: Color(0xff414141)
                                  //errorText: snapshot.error
                                ),
                              ),
                            )),
                        SizedBox(height: 20,),
                        ListTile(
                          leading: Image.asset(
                            'images/batmen.jpg',
                          ),
                          title: Text('1234 1234 1234 1234',  style: TextStyle(color: Color(0xfffafafa)),),
                          trailing: Icon(CupertinoIcons.check_mark_circled, color: Color(0xff31803f)),
                        ),ListTile(
                          leading: Image.asset(
                            'images/batmen.jpg',
                          ),
                          title: Text('1234 1234 1234 1234',  style: TextStyle(color: Color(0xfffafafa)),),
                          //trailing: Icon(CupertinoIcons.delete, color: Color(0xfffafafa)),
                        ),ListTile(
                          title: Text('Add new card',  style: TextStyle(color: Color(0xfffafafa)),),
                          leading: Icon(CupertinoIcons.add_circled_solid, color: Color(0xfffafafa)),
                        ),
                        ButtonTheme(
                            minWidth: double.infinity,
                            height: 50.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(width: 1, color: Color(0xff31803f))),
                              color: Color(0xff31803f),
                              onPressed: () {},
                              child: Text(
                                'SEND',
                                style: TextStyle(
                                  color: Color(0xfffafafa),
                                  fontSize: 15,
                                ),
                              ),
                            )),],
                      ),
                    )]));
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Finances', style: TextStyle(color: Color(0xfffafafa))),
        backgroundColor: Color(0xff1d2120),
        actions: <Widget>[
          IconButton(
            onPressed:() {Navigator.push(context,MaterialPageRoute(builder: (context) => CardScreen()));},
              icon: Icon(
              Icons.credit_card,
              color: Color(0xfffafafa),
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 60,
            color: Color(0xff171918),
            child: Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                  children: <Widget>[
                    SizedBox(height: 5,),
                    Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '22.1234',
                            style: TextStyle(
                                color: Color(0xfffafafa), fontSize: 25),
                          )),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text('Balance',
                              style: TextStyle(
                                color: Color(0xff767F88),
                              ))),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  ButtonTheme(
                      minWidth: 150.0,
                      height: 48.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side:
                                BorderSide(width: 1, color: Color(0xff31803f))),
                        color: Color(0xff31803f),
                        onPressed: () {_settingModalBottomSheet(context);},
                        child: Row(children: <Widget>[
                          Icon(CupertinoIcons.down_arrow,
                              color: Color(0xfffafafa)),
                          Text(
                            'WITHDRAW',
                            style: TextStyle(
                              color: Color(0xfffafafa),
                              fontSize: 15,
                            ),
                          )
                        ]),
                      )),
                ],
              ),])
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Funds withdrawal for the amount',
                    style: TextStyle(color: Color(0xfffafafa), fontSize: 20),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'of55555555555555',
                    style: TextStyle(color: Color(0xfffafafa), fontSize: 20),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Column(children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Claimed',
                            style: TextStyle(
                              color: Color(0xff767F88),
                            ))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('2019.05.04 20:54',
                            style: TextStyle(
                              color: Color(0xff767F88),
                            )))
                  ]),
                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.refresh_thin,
                        color: Color(0xff767F88),
                      ),
                      Text('in processing',
                          style: TextStyle(
                            color: Color(0xff767F88),
                          )),
                    ],
                  )
                ],
              )
            ]),
          ),
          Divider(
            color: Color(0xff767F88),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Funds withdrawal for the amount',
                    style: TextStyle(color: Color(0xfffafafa), fontSize: 20),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'of55555555555555',
                    style: TextStyle(color: Color(0xfffafafa), fontSize: 20),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Column(children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Claimed',
                            style: TextStyle(
                              color: Color(0xff767F88),
                            ))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('2019.05.04 20:54',
                            style: TextStyle(
                              color: Color(0xff767F88),
                            )))
                  ]),
                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.refresh_thin,
                        color: Color(0xff767F88),
                      ),
                      Text('in processing',
                          style: TextStyle(
                            color: Color(0xff767F88),
                          )),
                    ],
                  )
                ],
              )
            ]),
          ),
          Divider(
            color: Color(0xff767F88),
          ),
        ],
      ),
      backgroundColor: Color(0xff414141),
    );
  }
}
