import 'package:flutter/material.dart';
import 'package:bottom_sheet_stateful/bottom_sheet_stateful.dart';
import 'package:flutter/cupertino.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
                    title:  Text('Add new card', style: TextStyle(color: Color(0xfffafafa))),
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
                Container(

                    child: Theme(
                      data: new ThemeData(
                          primaryColor: Colors.teal,
                          hintColor:  Color(0xff767F88)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Card number",
                            fillColor: Color(0xff414141)
                          //errorText: snapshot.error
                        ),
                      ),
                    )),
                Container(child: Row(
                    children: <Widget>[
                    Container(
                    width: 180.0,
                    child: Theme(
                      data: new ThemeData(
                          primaryColor: Colors.teal,
                          hintColor:  Color(0xff767F88)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "First Name",
                            fillColor: Color(0xff414141)
                          //errorText: snapshot.error
                        ),
                      ),
                    )),SizedBox(width: 10,),Container(
                        width: 180.0,
                        child: Theme(
                          data: new ThemeData(
                              primaryColor: Colors.teal,
                              hintColor:  Color(0xff767F88)),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Last Name",
                                fillColor: Color(0xff414141)
                              //errorText: snapshot.error
                            ),
                          ),
                        ))]),
                ),
                SizedBox(height: 20,),
                Text('By continuing, you age to the Teams of services' ,style: TextStyle(
          color: Color(0xff767F88)),
          ),
                SizedBox(height: 20,),
                ButtonTheme(
                    minWidth: double.infinity,
                    height: 40.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(width: 1, color: Color(0xff31803f))),
                      color: Color(0xff31803f),
                      onPressed: () {},
                      child: Text(
                        'ADD CARD',
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
        title:
        Text('Card', style: TextStyle(color: Color(0xfffafafa))),
        backgroundColor: Color(0xff1d2120),
      ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Image.asset(
          'images/batmen.jpg',
        ),
              title: Text('1234 1234 1234 1234',  style: TextStyle(color: Color(0xfffafafa)),),
              trailing: Icon(CupertinoIcons.delete, color: Color(0xfffafafa)),
            ),
          ],
       // ),
      ),
      backgroundColor: Color(0xff414141),/////////
      floatingActionButton: FloatingActionButton(
        onPressed:() {_settingModalBottomSheet(context);},
        child: Icon(CupertinoIcons.add, color: Color(0xfffafafa)),
        backgroundColor: Color(0xff31803f),
      ),
    );
  }
}
