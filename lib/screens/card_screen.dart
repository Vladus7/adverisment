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
          return Padding(
          padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom),
          child:Container(
              height: MediaQuery.of(context).size.height-480.0,
            decoration: BoxDecoration(
                color: Color(0xff171918),
                borderRadius: new BorderRadius.only(
              topLeft:  const  Radius.circular(5.0),
                topRight: const  Radius.circular(5.0))),
            child: ListView(
              children: <Widget>[
                new ListTile(
                    title:  Text('Add new card', style: TextStyle(color: Color(0xfffafafa),fontSize: 20)),
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
                    child:
                      Theme(
                        data: new ThemeData(
                            cursorColor: Color(0xff31803f),
                            primaryColor: Color(0xff31803f),
                            hintColor: Color(0xff767F88)),
                        child: TextField(
                          style: new TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff171918),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15),//borderSide: BorderSide(color: Colors.red),
                          //borderRadius: BorderRadius.circular(32)
                        ),
                              hintText: "Card number",
                          ),
                        ),
                      )),
                SizedBox(height: 15,),
                Container(child: Row(
                    children: <Widget>[
                    Container(
                    width: 180.0,
                    child: Theme(
                      data: new ThemeData(
                          cursorColor: Color(0xff31803f),
                          primaryColor: Color(0xff31803f),
                          hintColor: Color(0xff767F88)),
                      child: TextField(
                        style: new TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff171918),
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(15),//borderSide: BorderSide(color: Colors.red),
                            //borderRadius: BorderRadius.circular(32)
                          ),
                            hintText: "First Name",
                          //errorText: snapshot.error
                        ),
                      ),
                    )),SizedBox(width: 10,),Container(
                        width: 180.0,
                        child: Theme(
                          data: new ThemeData(
                              cursorColor: Color(0xff31803f),
                              primaryColor: Color(0xff31803f),
                              hintColor: Color(0xff767F88)),
                          child: TextField(
                            style: new TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xff171918),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(15),//borderSide: BorderSide(color: Colors.red),
                                //borderRadius: BorderRadius.circular(32)
                              ),
                                hintText: "Last Name",
                              //errorText: snapshot.error
                            ),
                          ),
                        ))]),
                ),
                SizedBox(height: 25,),
                Text('By continuing, you age to the Teams of services' ,style: TextStyle(
          color: Color(0xff767F88)),
          ),
                SizedBox(height: 30,),
                ButtonTheme(
                    minWidth: double.infinity,
                    height: 48.0,
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
          )])));
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomPadding: true,
      key: _scaffoldKey,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(CupertinoIcons.left_chevron, color: Color(0xfffafafa)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title:
        Text('Card', style: TextStyle(color: Color(0xfffafafa))),
        backgroundColor: Color(0xff1d2120),
      ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                'images/Mastercard-logo.jpg',
                height: 18,
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
