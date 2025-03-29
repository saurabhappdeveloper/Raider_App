import 'dart:ui';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:geolocator/geolocator.dart';
import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';

RxString raid_title = "".obs;

class raid_not_found extends StatefulWidget {
  @override
  State<raid_not_found> createState() => _raid_not_found_inState();
}

class _raid_not_found_inState extends State<raid_not_found> {
  GoogleMapController controller;
  Position _currentPosition;
  // map
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('id-1'),
        position: LatLng(19.134069, 72.830360),
        icon: mapMarker,
        infoWindow: InfoWindow(title: 'Andheri West', snippet: 'Map'),
      ));
    });
  }

  Set<Marker> _markers = {};
  BitmapDescriptor mapMarker;

  // drop down
  RxInt raider_index = 1.obs;
  String dropdownValue = list.first;
  final List<String> raider_list = <String>[
    'Edit ride',
    'Share ride path',
    'cancel ride'
  ];
  String _currentItemSelected;

  @override
  void initState() {
    super.initState();
    raid_title(Variable.edit_ride);
    // _currentItemSelected = raider_list[0];
    // raider_not_found_design(context, 0);
  }

  static const double thresholdHeight = 600.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
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
                    onTap: () {
                      print("google google");
                    },
                    child: GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(19.134069, 72.830360),
                        zoom: 15,
                      ),
                      onMapCreated: _onMapCreated,
                    ),
                  ),
// appbar
                  Obx(() => appbar(
                        height: 60,
                        decoration: BoxDecoration(color: White_color),
                        title: raid_title.toString(),
                        back_onpressed: () {
                          Navigator.pop(context);
                        },
                        // Variable.edit_ride,
                        textalign: Alignment.centerLeft,

                        icon2: Container(
                          height: 20,
                          width: 20,
                          child: GridView(
                            physics: BouncingScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1),
                            children: [1]

                                // Wrap each item (Card) with Focused Menu Holder
                                .map((e) => FocusedMenuHolder(
                                      menuWidth:
                                          MediaQuery.of(context).size.width *
                                              0.45,
                                      blurSize: 5.0,
                                      menuItemExtent: 45,
                                      // menuBoxDecoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.all(Radius.circular(15.0))),
                                      duration: Duration(milliseconds: 100),
                                      animateMenuItems: true,
                                      blurBackgroundColor: Colors.black54,
                                      openWithTap:
                                          true, // Open Focused-Menu on Tap rather than Long Press
                                      menuOffset:
                                          10.0, // Offset value to show menuItem from the selected item
                                      bottomOffsetHeight:
                                          80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                                      menuItems: <FocusedMenuItem>[
                                        // Add Each FocusedMenuItem  for Menu Options
                                        FocusedMenuItem(
                                            title: Text(
                                              "Edit ride",
                                              style: body3(Neutral_2),
                                            ),
                                            onPressed: () {
                                              raider_index(0);
                                              raid_title(Variable.edit_ride);
                                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
                                            }),
                                        FocusedMenuItem(
                                            title: Text("Share ride path",
                                                style: body3(Neutral_2)),
                                            onPressed: () {
                                              raider_index(1);
                                              raid_title("Tue, 07 Apr 15:39");
                                            }),
                                        FocusedMenuItem(
                                            title: Text("Cancel ride",
                                                style: body3(accent_color)),
                                            onPressed: () {
                                              raider_index(1);
                                              raid_title("Tue, 07 Apr 15:39");
                                            }),
                                      ],
                                      onPressed: () {},
                                      child: Image.asset(
                                        "assets/images/pink_more.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                        icon2_onpressed: () {},
                      )),
                 Obx(()=> raider_index == 1
                      ? Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                screenHeight > thresholdHeight
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10.0),
                                        child: InkWell(
                                          child: Container(
                                            // alignment: Alignment.topRight,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: White_color,
                                                shape: BoxShape.circle),

                                            child: Image.asset(
                                              "assets/images/recenter.png",
                                              height: 22,
                                              width: 22,
                                            ),
                                          ),
                                          onTap: () {
                                            //  widget.mapController!.animateCamera(
                                            //     CameraUpdate.newCameraPosition(
                                            //      CameraPosition(
                                            //         target: LatLng(
                                            //          _currentPosition.latitude,
                                            //          _currentPosition.longitude,
                                            //         ),
                                            //         zoom: 18.0,
                                            //      ),
                                            //     ),
                                            //  );
                                          },
                                        ))
                                    : SizedBox.shrink(),
                                //  SizedBox(height: 10,),
                                screenHeight > thresholdHeight
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10.0),
                                        child: InkWell(
                                          child: Container(
                                            // alignment: Alignment.topRight,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: White_color,
                                                shape: BoxShape.circle),

                                            child: Image.asset(
                                              "assets/images/live_location.png",
                                              height: 22,
                                              width: 22,
                                            ),
                                          ),
                                          onTap: () {},
                                        ))
                                    : SizedBox.shrink(),
                              ],
                            ),
                          ))
                      : SizedBox.shrink()),

// main code
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Obx(() => raider_index != 1 &&
                                  screenHeight > thresholdHeight
                              ? Padding(
                                  padding: const EdgeInsets.only(bottom: 10,right: 20),
                                  child: InkWell(
                                    child: Container(
                                      // alignment: Alignment.topRight,
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: White_color,
                                          shape: BoxShape.circle),

                                      child: Image.asset(
                                        "assets/images/recenter.png",
                                        height: 22,
                                        width: 22,
                                      ),
                                    ),
                                    onTap: () {
                                      //  widget.mapController!.animateCamera(
                                      //     CameraUpdate.newCameraPosition(
                                      //      CameraPosition(
                                      //         target: LatLng(
                                      //          _currentPosition.latitude,
                                      //          _currentPosition.longitude,
                                      //         ),
                                      //         zoom: 18.0,
                                      //      ),
                                      //     ),
                                      //  );
                                    },
                                  ))
                              : SizedBox.shrink()),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                              child: Container(
                                // height: 221,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: White_color,
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: SingleChildScrollView(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: raider_not_found_design(
                                      context, raider_index),
                                )),
                              )),
                        ],
                      ))
                ],
              ))
            ],
          );
        }),
      ),
    );
  }
}
