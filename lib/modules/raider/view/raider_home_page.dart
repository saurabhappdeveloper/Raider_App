import 'dart:ui';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';

 TextEditingController start_location = TextEditingController();
  TextEditingController destination_location = TextEditingController();
  RxString start_location_string = "".obs;
  RxString destination_location_string = "".obs;
   PolylinePoints polylinePoints;
Map<PolylineId, Polyline> polylines = {};
List<LatLng> polylineCoordinates = [];
 GoogleMapController controller;
  Position _currentPosition;
  RxString currentAddress = ''.obs;

// Method for retrieving the address
_getAddress() async {
    try {
     List<Placemark> p = await placemarkFromCoordinates(
         _currentPosition.latitude, _currentPosition.longitude);

     Placemark place = p[0];

        currentAddress =
            "${place.name}, ${place.locality}, ${place.postalCode}, ${place.country}".obs;
        start_location.text = currentAddress.toString();
        start_location_string = currentAddress;
        print("addressaddressaddressaddressaddressaddressaddressaddress");
        print(start_location_string);
    } catch (e) {
     print(e);
    }
}
  // Method for calculating the distance between two places
 calculateDistance() async {
                print("ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg");

    try {

     // Retrieving placemarks from addresses
     List<Location> startPlacemark = await locationFromAddress(start_location_string.toString());
     List<Location> destinationPlacemark =
         await locationFromAddress(destination_location_string.toString());

     // Use the retrieved coordinates of the current position,
     // instead of the address if the start position is user's
     // current position, as it results in better accuracy.
     print("1");
     double startLatitude = start_location.text == currentAddress
         ? _currentPosition.latitude
         : startPlacemark[0].latitude;
 print("2");
     double startLongitude = start_location.text == currentAddress
         ? _currentPosition.longitude
         : startPlacemark[0].longitude;
 print("3");
     double destinationLatitude = destinationPlacemark[0].latitude;
     double destinationLongitude = destinationPlacemark[0].longitude;
 print("4");
     String startCoordinatesString = '($startLatitude, $startLongitude)';
     String destinationCoordinatesString =
         '($destinationLatitude, $destinationLongitude)';
 print("5");
     // Start Location Marker
     Marker startMarker = Marker(
        markerId: MarkerId(startCoordinatesString),
        position: LatLng(startLatitude, startLongitude),
        infoWindow: InfoWindow(
         title: 'Start $startCoordinatesString',
         snippet: start_location.text.toString(),
        ),
        icon: BitmapDescriptor.defaultMarker,
     );
 print("6");
     // Destination Location Marker
     Marker destinationMarker = Marker(
        markerId: MarkerId(destinationCoordinatesString),
        position: LatLng(destinationLatitude, destinationLongitude),
        infoWindow: InfoWindow(
         title: 'Destination $destinationCoordinatesString',
         snippet: destination_location_string.toString(),
        ),
        icon: BitmapDescriptor.defaultMarker,
     );
 print("7");
     // Adding the markers to the list
     _markers.add(startMarker);
     _markers.add(destinationMarker);

     print(
        'START COORDINATES: ($startLatitude, $startLongitude)',
     );
     print(
        'DESTINATION COORDINATES: ($destinationLatitude, $destinationLongitude)',
     );

     // Calculating to check that the position relative
     // to the frame, and pan & zoom the camera accordingly.
     double miny = (startLatitude <= destinationLatitude)
         ? startLatitude
         : destinationLatitude;
     double minx = (startLongitude <= destinationLongitude)
         ? startLongitude
         : destinationLongitude;
     double maxy = (startLatitude <= destinationLatitude)
         ? destinationLatitude
         : startLatitude;
     double maxx = (startLongitude <= destinationLongitude)
         ? destinationLongitude
         : startLongitude;

     double southWestLatitude = miny;
     double southWestLongitude = minx;

     double northEastLatitude = maxy;
     double northEastLongitude = maxx;
      print("8");

     // Accommodate the two locations within the
     // camera view of the map
     controller.animateCamera(
        CameraUpdate.newLatLngBounds(
         LatLngBounds(
            northeast: LatLng(northEastLatitude, northEastLongitude),
            southwest: LatLng(southWestLatitude, southWestLongitude),
         ),
         100.0,
        ),
     );

     // Calculating the distance between the start and the end positions
     // with a straight path, without considering any route
     // double distanceInMeters = await Geolocator.bearingBetween(
     // startLatitude,
     // startLongitude,
     // destinationLatitude,
     // destinationLongitude,
     // );

     await _createPolylines(startLatitude, startLongitude, destinationLatitude,
         destinationLongitude);

     double totalDistance = 0.0;

     // Calculating the total distance by adding the distance
     // between small segments
     for (int i = 0; i < polylineCoordinates.length - 1; i++) {
        totalDistance += _coordinateDistance(
         polylineCoordinates[i].latitude,
         polylineCoordinates[i].longitude,
         polylineCoordinates[i + 1].latitude,
         polylineCoordinates[i + 1].longitude,
        );
     }

    //  setState(() {
    //     _placeDistance = totalDistance.toStringAsFixed(2);
    //     print('DISTANCE: $_placeDistance km');
    //  });

     return true;
    } catch (e) {
      print("1111111111111111111111111111111111111111111111111111");
     print(e);
    }
    return false;
}

// Formula for calculating distance between two coordinates
// https://stackoverflow.com/a/54138876/11910277
double _coordinateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
}

// Create the polylines for showing the route between two places
_createPolylines(
    double startLatitude,
    double startLongitude,
    double destinationLatitude,
    double destinationLongitude,
) async {
  print("pollypollypollypollypollypollypollypolly");
    polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
    "AIzaSyBH8TLcYEJKviOSy23P9HdFXxpe5m7LN44", // Google Maps API Key
     PointLatLng(startLatitude, startLongitude),
     PointLatLng(destinationLatitude, destinationLongitude),
     travelMode: TravelMode.transit,
    );
  polylineCoordinates = [];
  polylines = {};
    if (result.points.isNotEmpty) {
     result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
     });
    }

    PolylineId id = PolylineId('poly');
    Polyline polyline = Polyline(
     polylineId: id,
     color: Colors.red,
     points: polylineCoordinates,
     width: 3,
    );
    polylines[id] = polyline;
}

  Set<Marker> _markers = {};
  BitmapDescriptor mapMarker;
class raider_home_page extends StatefulWidget {
  @override
  State<raider_home_page> createState() => _raider_home_page_inState();
}

class _raider_home_page_inState extends State<raider_home_page> {
  RxInt selected_tab_index = 0.obs;
 


_getCurrentLocation() async {
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
     setState(() {
        _currentPosition = position;
        print('CURRENT POS: $_currentPosition');
        controller.animateCamera(
         CameraUpdate.newCameraPosition(
            CameraPosition(
             target: LatLng(position.latitude, position.longitude),
             zoom: 18.0,
            ),
         ),
        );
     });
     await _getAddress();
    }).catchError((e) {
     print(e);
    });
}



CameraPosition _initialLocation =
    const CameraPosition(target: LatLng(19.0760, 72.8777));
  static const double thresholdHeight = 600.0;

  @override
  void initState()
  {
    super.initState();
    _getCurrentLocation();
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body:  LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double screenHeight = constraints.maxHeight;
          return Column(
            children: [
        // main code
        
              /// map
              Expanded(
                  child: Stack(
                children: [
                  InkWell(
                    onTap: (){
                      // is_location(false);
                    },
                    child: 
                    GoogleMap(
             markers: Set<Marker>.from(_markers),
             initialCameraPosition: _initialLocation,
             myLocationEnabled: true,
             myLocationButtonEnabled: true,
             mapType: MapType.normal,
             zoomGesturesEnabled: true,
             zoomControlsEnabled: false,
             polylines: Set<Polyline>.of(polylines.values),
             onMapCreated: (GoogleMapController googleMapController) {
                controller = googleMapController;
             },
            ),
    //                 GoogleMap(
    //     // googlemapApikey: 'AIzaSyBH8TLcYEJKviOSy23P9HdFXxpe5m7LN44',
    //     initialCameraPosition: CameraPosition(
    //                     target: LatLng(19.134069, 72.830360),
    //                     zoom: 15,
    //                   ),
    //     onMapCreated: ((controller) {
    //       setState(() {
    //            controller = controller;
    //       });
         
    //     }),
    //     mapType: MapType.normal,
    //     myLocationEnabled: true,
    //     myLocationButtonEnabled: false,
    //     zoomGesturesEnabled: true,
    //     zoomControlsEnabled: false,
    
    //  ),

                    // GoogleMap(
                    //   onCameraMove: (position) {
                    //   },
                    //   zoomControlsEnabled: false,
                    //   mapType: MapType.hybrid,
                    //   initialCameraPosition: CameraPosition(
                    //     target: LatLng(19.134069, 72.830360),
                    //     zoom: 15,
                    //   ),
                    //   onMapCreated: _onMapCreated,
                    // ),
                  ),
                  appbar(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.transparent),
                    main_icon: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: White_color),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/menu.png",
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                    ),
                    // title: "l",
                    textalign: Alignment.centerLeft,
                    icon1: Image.asset(
                      "assets/images/pink_chat.png",
                      height: 20,
                      width: 20,
                    ),
                    icon2: Image.asset(
                      "assets/images/notification.png",
                      height: 20,
                      width: 20,
                    ),
                    icon1_color: White_color,
                    icon2_color: White_color,
                  ),
                  // Align(
                  // alignment: Alignment.centerRight,
                  // child: Padding(
                  //  padding: const EdgeInsets.only(right: 20, bottom: 10.0),
                  //  child: InkWell(
                  //         child: Container(
                  //           padding: EdgeInsets.all(8),
                  //           decoration: BoxDecoration(
                  //             color: White_color,
                  //             shape: BoxShape.circle),
                          
                  //          child: Image.asset("assets/images/live_location.png",height: 22,width: 22,),
                  //         ),
                  //         onTap: () {
                  //         //  widget.mapController!.animateCamera(
                  //         //     CameraUpdate.newCameraPosition(
                  //         //      CameraPosition(
                  //         //         target: LatLng(
                  //         //          _currentPosition.latitude,
                  //         //          _currentPosition.longitude,
                  //         //         ),
                  //         //         zoom: 18.0,
                  //         //      ),
                  //         //     ),
                  //         //  );
                  //         },
                       
                      
                  //  ))),
        
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            
                         screenHeight>thresholdHeight?
                            Padding(
                                       padding: const EdgeInsets.only( bottom: 10.0),
                                       child: InkWell(
                            child: Container(
                              // alignment: Alignment.topRight,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: White_color,
                                shape: BoxShape.circle),
                            
                             child: Image.asset("assets/images/live_location.png",height: 22,width: 22,),
                            ),
                            onTap: () {
                              controller.animateCamera(
                            CameraUpdate.newCameraPosition(
                             CameraPosition(
                                target: LatLng(
                                 _currentPosition.latitude,
                                 _currentPosition.longitude,
                                ),
                                zoom: 18.0,
                             ),
                            ),
                         );
                        //  _getCurrentLocation();
                            },
                         
                        
                                       )):SizedBox.shrink(),
                            Container(
                              // height: 221,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: White_color,
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  selected_tab_index(0);
                                                });
                                              },
                                              child: Container(
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: selected_tab_index == 0
                                                          ? Primary_3_color
                                                          : White_color,
                                                      borderRadius:
                                                          BorderRadius.circular(16)),
                                                  child: FittedBox(
                                                      fit: BoxFit.scaleDown,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.fromLTRB(
                                                                8, 6, 8, 6),
                                                        child: Row(
                                                          children: [
                                                            Image.asset(
                                                              selected_tab_index == 0
                                                                  ? "assets/images/pink_search_tab.png"
                                                                  : "assets/images/tab_black_search.png",
                                                              height: 18,
                                                              width: 18,
                                                            ),
                                                            SizedBox(
                                                              width: 6,
                                                            ),
                                                            Text(
                                                              Variable.find_ride,
                                                              style: body2(
                                                                  selected_tab_index ==
                                                                          0
                                                                      ? Primary_1_color
                                                                      : Neutral_1),
                                                            ),
                                                          ],
                                                        ),
                                                      ))),
                                            )),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  selected_tab_index(1);
                                                });
                                              },
                                              child: Container(
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: selected_tab_index == 1
                                                          ? Primary_3_color
                                                          : White_color,
                                                      borderRadius:
                                                          BorderRadius.circular(16)),
                                                  child: FittedBox(
                                                      fit: BoxFit.scaleDown,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.fromLTRB(
                                                                8, 6, 8, 6),
                                                        child: Row(
                                                          children: [
                                                            Image.asset(
                                                              selected_tab_index == 1
                                                                  ? "assets/images/pink_car_tab.png"
                                                                  : "assets/images/black_car_tab.png",
                                                              height: 18,
                                                              width: 18,
                                                            ),
                                                            SizedBox(
                                                              width: 6,
                                                            ),
                                                            Text(
                                                              Variable.offer_ride,
                                                              style: body2(
                                                                  selected_tab_index ==
                                                                          1
                                                                      ? Primary_1_color
                                                                      : Neutral_1),
                                                            ),
                                                          ],
                                                        ),
                                                      ))),
                                            )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Column(
                                            children:
                                                tab_deign(context, selected_tab_index,
                                                selected_tab_index == 0?
                                                Variable.find
                                                :Variable.offer
                                                ))
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ))
            ],
      );} ),
        ),
      
    );
  }
}

