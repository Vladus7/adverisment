//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:advertise/screens/login_screen.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    SystemChrome.setPreferredOrientations([
//      DeviceOrientation.portraitUp,
//      DeviceOrientation.portraitDown,
//    ]);
//    return MaterialApp(
//      theme: ThemeData(
//        primarySwatch: Colors.teal,
//        canvasColor: Colors.transparent,
//      ),
//      home: Scaffold(
//        resizeToAvoidBottomPadding: false,
//        body: LoginScreen(),
//      ),
//    );
//  }
//}
import 'package:flutter/material.dart';
//import 'package:advertise_me/login_screen.dart';
import 'dart:async';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_webservice/places.dart';


void main() => runApp(MyApp());

//const kGoogleApiKey = "AIzaSyABvwBWHdtoWk5ZWkUI4GtLjZx5RtmFy0k";
const kGoogleApiKey = "AIzaSyANGEnHf4BSldU2yr0CxAiXfQU7LHyX_-0";
//const kGoogleApiKey = "AIzaSyC9NLOvza3c7YwkgbcQi7sL5al9qs1bsqA";

GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: kGoogleApiKey);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: demo(),
      ),
    );
  }
}

class demo extends StatefulWidget {
  @override
  demoState createState() => new demoState();
}

class demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: () async {
                Prediction p = await PlacesAutocomplete.show(
                    context: context, apiKey: kGoogleApiKey);
                displayPrediction(p);
              },
              child: Text('Find address'),

            )
        )
    );
  }

  Future<Null> displayPrediction(Prediction p) async {
    if (p != null) {
      PlacesDetailsResponse detail =
      await _places.getDetailsByPlaceId(p.placeId);

      var placeId = p.placeId;
      double lat = detail.result.geometry.location.lat;
      double lng = detail.result.geometry.location.lng;

      var address = await Geocoder.local.findAddressesFromQuery(p.description);

      print(lat);
      print(lng);
    }
  }
}