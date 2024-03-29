import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:bottom_sheet_stateful/bottom_sheet_stateful.dart';
import 'package:flutter/cupertino.dart';
import 'package:advertise/screens/notifications.dart';
import 'package:advertise/screens/finances.dart';
import 'package:advertise/screens/tasks_screen.dart';
import 'package:advertise/screens/account_screen.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:location/location.dart' as loc;
import 'package:google_maps_webservice/places.dart';

//const kGoogleApiKey = "AIzaSyC9NLOvza3c7YwkgbcQi7sL5al9qs1bsqA";
//const kGoogleApiKey = "AIzaSyBaD-EQWX0WOpRHW5eVHqZRSHULjyTyKtM";
//const kGoogleApiKey = "AIzaSyABvwBWHdtoWk5ZWkUI4GtLjZx5RtmFy0k";
const kGoogleApiKey = "AIzaSyANGEnHf4BSldU2yr0CxAiXfQU7LHyX_-0";
GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: kGoogleApiKey);

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Set<Marker> _markers = {};
  var _center = const LatLng(45.521563, -122.677433);
  Completer<GoogleMapController> _controller = Completer();
  String place = 'Поиск';

  var currentLocation;

  void _onAddMarkerButtonPressed() async {
    var location = new loc.Location();
    try {
      currentLocation = await location.getLocation();
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
      setState(() {
        _markers.add(Marker(
          markerId: MarkerId(
              LatLng(currentLocation.latitude, currentLocation.longitude)
                  .toString()),
          position: LatLng(currentLocation.latitude, currentLocation.longitude),
          infoWindow: InfoWindow(
            title: 'Your locate',
          ),
          icon: BitmapDescriptor.fromAsset(
              "images/google-map-pointer-grey-th.png"),
        ));
      });
    } on Exception {
      currentLocation = null;
    }
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(50.432853, 30.475761),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(50.432853, 30.475761),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  BSAttribute bs1Attr;

  @override
  void initState() {
    super.initState();
    bs1Attr = BSAttribute();
  }



  @override
  Widget build(BuildContext context) {
    return
//      Stack(
//        children: <Widget>[
        Scaffold(
//      key: _scaffoldKey,
      bottomSheet: BottomSheetStateful(
        attribute: (bs1Attr = BSAttribute(
            bodyWidget: Container(
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Container(
                width: 35,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    border: Border.all(width: 1.5, color: Color(0xfffafafa)),
                    color: Color(0xfffafafa)),
              ),
              Row(children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                    minWidth: 90.0,
                    height: 36.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(width: 1, color: Color(0xff31803f))),
                      color: Color(0xff31803f),
                      onPressed: () {},
                      child: Text(
                        'START',
                        style: TextStyle(
                          color: Color(0xfffafafa),
                          fontSize: 15,
                        ),
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Text('take the campaign and start',
                    style: TextStyle(
                      color: Color(0xfffafafa),
                    )),
              ]),
              ListTile(
                leading: Icon(
                  CupertinoIcons.person,
                  color: Color(0xfffafafa),
                ),
                title: Text('Account info',
                    style: TextStyle(
                      color: Color(0xfffafafa),
                    )),
                subtitle: Text('Manage your personal information',
                    style: TextStyle(
                      color: Color(0xff767F88),
                    )),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AccountScreen()));
                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.check_mark_circled_solid,
                  color: Color(0xfffafafa),
                ),
                title: Text('Task',
                    style: TextStyle(
                      color: Color(0xfffafafa),
                    )),
                subtitle: Text('See availiable tasks for you',
                    style: TextStyle(
                      color: Color(0xff767F88),
                    )),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TasksScreen()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.equalizer,
                  color: Color(0xfffafafa),
                ),
                title: Text('Finances',
                    style: TextStyle(
                      color: Color(0xfffafafa),
                    )),
                subtitle: Text('Manage your payment information',
                    style: TextStyle(
                      color: Color(0xff767F88),
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FinancesScreen()));
                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Color(0xfffafafa),
                ),
                title: Text('Notification',
                    style: TextStyle(
                      color: Color(0xfffafafa),
                    )),
                subtitle: Text('All your notification',
                    style: TextStyle(
                      color: Color(0xff767F88),
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.info,
                  color: Color(0xfffafafa),
                ),
                title: Text('About us',
                    style: TextStyle(
                      color: Color(0xfffafafa),
                    )
                    // onTap: () => ...,
                    ),
                subtitle: Text('Terms of use, Confidentiality, etc.',
                    style: TextStyle(
                      color: Color(0xff767F88),
                    )),
              )
            ])),
            peekHeight: 80,
            maxHeight: 450,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.9),
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(15.0),
                    topRight: const Radius.circular(15.0))),
            headWidget:
                Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Container(
                width: 35,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    border: Border.all(width: 1.5, color: Color(0xfffafafa)),
                    color: Color(0xfffafafa)),
              ),
              Row(children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                    minWidth: 90.0,
                    height: 36.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(width: 1, color: Color(0xff31803f))),
                      color: Color(0xff31803f),
                      onPressed: () {},
                      child: Text(
                        'START',
                        style: TextStyle(
                          color: Color(0xfffafafa),
                          fontSize: 15,
                        ),
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Text('take the campaign and start',
                    style: TextStyle(
                      color: Color(0xfffafafa),
                    )),
              ]),
            ]),
            closeOnSwipeDown: false,
            showHead: true)),
        body: Stack(children: <Widget>[
          Container(
            child: GoogleMap(
              markers: _markers,
              mapType: MapType.normal,
              //myLocationEnabled: true,
              //myLocationButtonEnabled: true,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 20.0,
              ),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          Positioned(
            child: new FloatingActionButton(
              child: Icon(
                CupertinoIcons.location,
                color: Color(0xfffafafa),
              ),
              backgroundColor: Color(0xff31803f),
              onPressed: () {
                _onAddMarkerButtonPressed();
              },
            ),
            right: 10.0,
            top: 640.0,
          ),
          Positioned(
            child: ButtonTheme(
                minWidth: double.infinity,
                height: 10.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(
                        width: 2,
                        color: Colors.black.withOpacity(0.9),
                      )),
                  color: Colors.white.withOpacity(0.01),
                  onPressed: () async {
//                Prediction p = await PlacesAutocomplete.show(
//                    context: context,
//                    apiKey: kGoogleApiKey,
//                    mode: Mode.overlay, // Mode.fullscreen
//                    language: "ua",
//                    components: [new Component(//Component.country, "uk",
//                        Component.locality, "ua")]);
//                displayPrediction(p);
                    Prediction p = await PlacesAutocomplete.show(
                        //components: [new Component(Component.country, "uk",)],
                        context: context,
                        apiKey: kGoogleApiKey,
                        mode: Mode.overlay);
                    displayPrediction(p);
                  },
                  child: Container(
                    height: 48,
                      child: Row(
                        children: <Widget>[
                      IconButton(
                      icon:Icon(CupertinoIcons.search,
                          size: 25.0, color: Color(0xff767F88))),
                       SizedBox(width: 30,),
                       Text(place, style: TextStyle(color: Color(0xff767F88),fontSize: 20),),
SizedBox(width: 175,),
//                        IconButton(
//                            icon: Icon(CupertinoIcons.clear,
//                                size: 35.0, color: Color(0xff767F88)),
//                            onPressed: () {
//                              place = 'Find address';
//                              setState(() {});
//                            }),
                        ])),
                )),
            right: 10.0,
            left: 10.0,
            top: 20.0,
          )
        ]),
//            RaisedButton(
//              onPressed: () async {
////                Prediction p = await PlacesAutocomplete.show(
////                    context: context,
////                    apiKey: kGoogleApiKey,
////                    mode: Mode.overlay, // Mode.fullscreen
////                    language: "ua",
////                    components: [new Component(//Component.country, "uk",
////                        Component.locality, "ua")]);
////                displayPrediction(p);
//                Prediction p = await PlacesAutocomplete.show(
//                    //components: [new Component(Component.country, "uk",)],
//                  context: context, apiKey: kGoogleApiKey,
//                  mode: Mode.overlay
//                );
//                displayPrediction(p);
//                print(
//                    '////////////////////////////////////////////////////////////////////');
//                print(p);
//              },
//              child: Text('Find address'),
//            )
//          ])
      ),
//      appBar: AppBar(
//        title: Text('Map',style: TextStyle(color: Color(0xfffafafa))),
//    backgroundColor: Color(0xff1d2120),
//      ),
//      floatingActionButton: FloatingActionButton.extended(
//        onPressed: _goToTheLake,
//        label: Text('To the lake!'),
//        icon: Icon(Icons.directions_boat),
//      ),
//      body: GoogleMap(
//        mapType: MapType.hybrid,
//        initialCameraPosition: _kGooglePlex,
//        onMapCreated: (GoogleMapController controller) {
//          _controller.complete(controller);
//        },
//      ),
      //     floatingActionButton: FloatingActionButton(onPressed: _showPersBottomSheetCallBack,),
//      floatingActionButton: FloatingActionButton.extended(
//        onPressed: _goToTheLake,
//        label: Text('To the lake!'),
//        icon: Icon(Icons.directions_boat),
//      ),
    );
  }

  Future displayPrediction(Prediction p) async {
    if (p != null) {
      print(p);
      PlacesDetailsResponse detail =
          await _places.getDetailsByPlaceId(p.placeId);

      var placeId = p.placeId;
      String name = detail.result.name;
      double lat = detail.result.geometry.location.lat;
      double lng = detail.result.geometry.location.lng;

      // var address = await Geocoder.local.findAddressesFromQuery(p.description);

      print(name);
      print(lat);
      print(lng);
    }
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
//  Future<void> _goToTheLake() async {
//    final GoogleMapController controller = await _controller.future;
//    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//  }
}
