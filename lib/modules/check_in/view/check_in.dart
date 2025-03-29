import 'dart:ui';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/check_in/widget/list_design_widget.dart';
import 'package:truckgo_new/modules/module.dart';

// RxString raid_title = "".obs;
RxInt raider_design_index = 0.obs;

class check_in extends StatefulWidget {
  final String title;
  final int is_ride_request;

  const check_in(
      {Key key, this.title = Variable.tuesday_date, this.is_ride_request = 0})
      : super(key: key);
  @override
  State<check_in> createState() => _check_in_inState();
}

class _check_in_inState extends State<check_in> {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
// main code
            appbar(
              // height: 127,
              decoration: BoxDecoration(color: Colors.white),
              title: widget.title,
              // "Tue, 07 Apr 15:39Tue",
              textalign: Alignment.centerLeft,
              back_onpressed: () {
                print("back called");
                Navigator.pop(context);
              },
              icon1: Image.asset(
                "assets/images/pink_chat.png",
                height: 20,
                width: 20,
              ),
              icon2: Image.asset(
                "assets/images/pink_more.png",
                height: 20,
                width: 20,
              ),
              child_padding: EdgeInsets.all(0),
              child: Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Container(
                  decoration: BoxDecoration(color: Primary_1_color),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
                    child: Obx(()=>Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/dot.png",
                                  height: 4,
                                  width: 4,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Dash(
                                    direction: Axis.vertical,
                                    dashGap: 3,
                                    length: 12,
                                    dashBorderRadius: 15,
                                    // dashLength: 12,
                                    dashColor: White_color),
                                SizedBox(
                                  height: 2,
                                ),
                                Image.asset(
                                  "assets/images/white_location.png",
                                  height: 12,
                                  width: 12,
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.76,
                                    child: Text(
                                      "Parateek Wisteria Sector 77, Nioda, Uttar Praaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                      style: regular(White_color),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.76,
                                    child: Text(
                                      "HCL Technologies Sector 126, Raipu Khadar, Praaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                      style: regular(White_color),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        raider_design_index != 0?
                        SizedBox(
                          height: 8,
                        ):SizedBox.shrink(),
                        raider_design_index != 0?
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: White_color)),
                                    padding: EdgeInsets.fromLTRB(15, 3, 15, 3),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/doller.png",
                                          height: 23,
                                          width: 23,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "56",
                                          style: caption1(White_color),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "Points",
                                          style: caption1(White_color),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              // color: Colors.yellow,
                              // width: MediaQuery.of(context).size.width,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.centerRight,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/white_person.png",
                                        height: 23,
                                        width: 23,
                                      ),
                                      Text("10Mts", style: caption1(White_color),),
                                      SizedBox(width: 6,),
                                      Image.asset(
                                        "assets/images/white_small_arrow.png",
                                        height: 16,
                                        width: 16,
                                      ),
                                     SizedBox(width: 6,),
                                          Image.asset(
                                            "assets/images/white_car.png",
                                            height: 23,
                                            width: 23,
                                          ),
                                          Text(
                                            "10Mts",
                                             style: caption1(White_color),
                                          ),
                                        
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ):SizedBox.shrink()
                      ],
                    )),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Stack(
              children: [
                GoogleMap(
                  mapType: MapType.hybrid,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(19.134069, 72.830360),
                    zoom: 15,
                  ),
                  onMapCreated: _onMapCreated,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 221,
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: White_color,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: bottom_raider_design(context),

                         
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
