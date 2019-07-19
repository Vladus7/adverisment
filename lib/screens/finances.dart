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
      isScrollControlled: false,
        context: context,
        builder: (BuildContext bc) {
          return Padding(
          padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom),
          child:Container(
              height: MediaQuery.of(context).size.height-400.0,////////////////!!!!!!!!!!!!!
              decoration: BoxDecoration(
                  color: Color(0xff171918),
                  borderRadius: new BorderRadius.only(
                      topLeft:  const  Radius.circular(5.0),
                      topRight: const  Radius.circular(5.0))),
              child: ListView(
                  children: <Widget>[
                    new ListTile(
                      title:  Text('Claim funds withdrawal', style: TextStyle(color: Color(0xfffafafa), fontSize: 20)),
                      trailing: IconButton(icon: Icon(CupertinoIcons.clear, color: Color(0xfffafafa),size: 35,), onPressed: (){
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
                                  primaryColor: Colors.white,
                                  hintColor: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true, fillColor: Color(0xff171918),
                                  border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),//borderSide: BorderSide(color: Colors.red),
                                    //borderRadius: BorderRadius.circular(32)
                                  ),
                                    hintText: "Summary",
                                  //errorText: snapshot.error
                                ),
                              ),
                            )),
                        SizedBox(height: 20,),
                        ListTile(
                          leading: Image.asset(
                            'images/Mastercard-logo.jpg',
                            height: 18,
                          ),
                          title: Text('1234 1234 1234 1234',  style: TextStyle(color: Color(0xfffafafa)),),
                          trailing: Icon(CupertinoIcons.check_mark_circled, color: Color(0xff31803f)),
                        ),ListTile(
                          leading: Image.asset(
                            'images/Mastercard-logo.jpg',
                            height: 18,
                          ),
                          title: Text('1234 1234 1234 1234',  style: TextStyle(color: Color(0xfffafafa)),),
                          //trailing: Icon(CupertinoIcons.delete, color: Color(0xfffafafa)),
                        ),ListTile(
                          title: Text('Add new card',  style: TextStyle(color: Color(0xfffafafa)),),
                          leading: Icon(CupertinoIcons.add_circled_solid, color: Color(0xfffafafa)),
                        ),
                        SizedBox(height: 15,),
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
                    )])));
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(CupertinoIcons.left_chevron, color: Color(0xfffafafa)),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
            height: 85,
            color: Color(0xff171918),
            child: Container(
              //margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                  children: <Widget>[
                    SizedBox(height: 18,),
                    Row(
                children: <Widget>[
                  Container(
                    width: 190, child: Center(child:
                  Column(
                    children: <Widget>[
//                      Align(
//                          alignment: Alignment.centerLeft,
                        //  child:
                  Text(
                            '22.1234',
                            style: TextStyle(
                                color: Color(0xfffafafa), fontSize: 25),
                          ),//),
//                      Align(
//                          alignment: Alignment.topLeft,
//                          child:
Text('Balance',
                              style: TextStyle(
                                color: Color(0xff767F88),
                              )),//),
                    ],
                  ),)),
//                  SizedBox(
//                    width: 100,
//                  ),
                  ButtonTheme(
                      minWidth: 200.0,
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
              ),SizedBox(height: 10,)])
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              SizedBox(height: 20,),
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
//                    Align(
//                        alignment: Alignment.,
//                        child:
                    Row(children: <Widget>[
                  Text('Claimed',
                            style: TextStyle(
                              color: Color(0xff767F88),
                            )),SizedBox(width: 55,)]),//),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('2019.05.04 20:54',
                            style: TextStyle(
                              color: Color(0xff767F88),
                            )))
                  ]),
                  SizedBox(
                    width: 140,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.refresh_thin,
                        color: Color(0xff767F88),
                      ),
                      SizedBox(width: 10,),
                      Text('in processing',
                          style: TextStyle(
                            color: Color(0xff767F88),
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,)
            ]),
          ),
          Divider(
            color: Color(0xff767F88),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              SizedBox(height: 20,),
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
//                    Align(
//                        alignment: Alignment.,
//                        child:
                    Row(children: <Widget>[
                      Text('Claimed',
                          style: TextStyle(
                            color: Color(0xff767F88),
                          )),SizedBox(width: 55,)]),//),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('2019.05.04 20:54',
                            style: TextStyle(
                              color: Color(0xff767F88),
                            )))
                  ]),
                  SizedBox(
                    width: 140,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.refresh_thin,
                        color: Color(0xff767F88),
                      ),
                      SizedBox(width: 10,),
                      Text('in processing',
                          style: TextStyle(
                            color: Color(0xff767F88),
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,)
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
