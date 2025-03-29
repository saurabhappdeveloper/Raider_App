import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';

List<String> list = <String>['Edit', 'Remove'];

class map_dashboard extends StatefulWidget {
  @override
  State<map_dashboard> createState() => _map_dashboard_inState();
}

class _map_dashboard_inState extends State<map_dashboard> {
  TextEditingController favourite_place = TextEditingController();
  RxString place = "".obs;

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

  // dropdown
  String dropdownValue = list.first;

  // toast
  showCustom(BuildContext context, int index, String message) {
    FToast fToast = FToast();
    fToast.init(context);
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: White_color,
        boxShadow: [
          BoxShadow(
            color: shadow_color,
            blurRadius: 40,
            spreadRadius: 0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            index == 0
                ? "assets/images/pink_star.png"
                : "assets/images/light_blue_pin.png",
            height: 20,
            width: 20,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(message, style: body3(Neutral_2)),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            Variable.undo,
            style: body2(Primary_1_color),
          )
        ],
      ),
    );
    fToast.showToast(
      child: toast,
      toastDuration: const Duration(seconds: 3),
      gravity: ToastGravity.BOTTOM,
    );
  }

  List address_array = [
    {
      "favourite": [
        {
          "title": "Home",
          "sub_title": "Parateek Wisteria Sector 77, Nioda",
          "is_new": 1
        },
        {
          "title": "Office",
          "sub_title": "HCL Technologies Sector 126, Raipu",
          "is_new": 0
        },
      ],
    },
    {
      "today": [
        {
          "title": "Raipur Khadar",
          "sub_title": "HCL Technologies Sector 126, Raipu…",
          "is_new": 0
        },
        {
          "title": "Nioda",
          "sub_title": "Parateek Wisteria Sector 77, Nioda,…",
          "is_new": 0
        },
      ],
    },
    {
      "last_week": [
        {
          "title": "Nioda",
          "sub_title": "Parateek Wisteria Sector 77, Nioda,…",
          "is_new": 0
        }
      ],
    },
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      favourite_place.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // appbar
          appbar(
                // height: MediaQuery.of(context).size.height,
                back_onpressed: () {
                  Navigator.pop(context);
                },
                title: Variable.start_point,
                textalign: Alignment.center,
                icon2: Image.asset(
                  "assets/images/map.png",
                  height: 24,
                  width: 24,
                ),
                child:Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: Variable.enter_start_point,
                          hintStyle: body3(Neutral_4_color),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.asset(
                              "assets/images/tab_black_search.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Neutral_4_color,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Neutral_4_color,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      
                    ],
                  ),
                ),
              ),
            Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18,0,18,0),
                          child: ListView(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(35),
                                          color: Primary_3_color),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/images/pink_star.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Home",
                                                  style: body3(Neutral_2),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                  "assets/images/pink_dot.png",
                                                  height: 4,
                                                  width: 4,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  Variable.new_word,
                                                  style:
                                                      caption2(Primary_1_color),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              "Parateek Wisteria Sector 77, Nioda",
                                              style: caption2(Neutral_4_color),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  DropdownButton<String>(
                                    // value: dropdownValue,

                                    icon: Image.asset(
                                      "assets/images/menu2.png",
                                      height: 14,
                                      width: 14,
                                    ),
                                    elevation: 16,
                                    // style: const TextStyle(color: Colors.deepPurple),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.transparent,
                                    ),

                                    onChanged: (String value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value;
                                        if (dropdownValue == "Remove") {
                                          showCustom(context, 0, "Home removed");
                                        } else {
                                          _showMyDialog();
                                        }
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: body3(Neutral_2),
                                        ),
                                      );
                                    }).toList(),
                                  )
                                  //  Container(
                                  //     alignment: Alignment.centerRight,

                                  //       child: Padding(
                                  //         padding: const EdgeInsets.all(8.0),
                                  //         child: Image.asset(
                                  //           "assets/images/menu2.png",
                                  //           height: 14,
                                  //           width: 14,
                                  //         ),
                                  //       ),
                                  //     ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(35),
                                          color: Primary_3_color),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/images/pink_star.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Office",
                                              style: body3(Neutral_2),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              "Parateek Wisteria Sector 77, Nioda",
                                              style: caption2(Neutral_4_color),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  DropdownButton<String>(
                                    // value: dropdownValue,
                                    icon: Image.asset(
                                      "assets/images/menu2.png",
                                      height: 14,
                                      width: 14,
                                    ),
                                    elevation: 16,
                                    // style: const TextStyle(color: Colors.deepPurple),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.transparent,
                                    ),
                                    onChanged: (String value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value;
                                        if (dropdownValue == "Remove") {
                                          showCustom(
                                              context, 0, "Office removed");
                                        }
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: body3(Neutral_2),
                                        ),
                                      );
                                    }).toList(),
                                  )
                                  // Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: Padding(
                                  //     padding: const EdgeInsets.all(8.0),
                                  //     child: Image.asset(
                                  //       "assets/images/menu2.png",
                                  //       height: 14,
                                  //       width: 14,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                "Today",
                                style: body2(Neutral_1),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(35),
                                          color: light_white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/images/black_location.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Raipur Khadar",
                                              style: body3(Neutral_2),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              "Parateek Wisteria Sector 77, Nioda",
                                              style: caption2(Neutral_4_color),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  DropdownButton<String>(
                                    // value: dropdownValue,
                                    icon: Image.asset(
                                      "assets/images/menu2.png",
                                      height: 14,
                                      width: 14,
                                    ),
                                    elevation: 16,
                                    // style: const TextStyle(color: Colors.deepPurple),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.transparent,
                                    ),
                                    onChanged: (String value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value;
                                        if (dropdownValue == "Remove") {
                                          showCustom(context, 1,
                                              "Raipur Khadar removed");
                                        }
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: body3(Neutral_2),
                                        ),
                                      );
                                    }).toList(),
                                  )
                                  // Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: Padding(
                                  //     padding: const EdgeInsets.all(8.0),
                                  //     child: Image.asset(
                                  //       "assets/images/menu2.png",
                                  //       height: 14,
                                  //       width: 14,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(35),
                                          color: light_white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/images/black_location.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Nioda",
                                              style: body3(Neutral_2),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              "Parateek Wisteria Sector 77, Nioda",
                                              style: caption2(Neutral_4_color),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  DropdownButton<String>(
                                    // value: dropdownValue,
                                    icon: Image.asset(
                                      "assets/images/menu2.png",
                                      height: 14,
                                      width: 14,
                                    ),
                                    elevation: 16,
                                    // style: const TextStyle(color: Colors.deepPurple),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.transparent,
                                    ),
                                    onChanged: (String value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value;
                                        if (dropdownValue == "Remove") {
                                          showCustom(context, 1, "Nioda removed");
                                        }
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: body3(Neutral_2),
                                        ),
                                      );
                                    }).toList(),
                                  )
                                  // Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: Padding(
                                  //     padding: const EdgeInsets.all(8.0),
                                  //     child: Image.asset(
                                  //       "assets/images/menu2.png",
                                  //       height: 14,
                                  //       width: 14,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              Text(
                                Variable.lastweek,
                                style: body2(Neutral_1),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(35),
                                          color: light_white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/images/black_location.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Nioda",
                                              style: body3(Neutral_2),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              "Parateek Wisteria Sector 77, Nioda",
                                              style: caption2(Neutral_4_color),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  DropdownButton<String>(
                                    // value: dropdownValue,
                                    icon: Image.asset(
                                      "assets/images/menu2.png",
                                      height: 14,
                                      width: 14,
                                    ),
                                    elevation: 16,
                                    // style: const TextStyle(color: Colors.deepPurple),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.transparent,
                                    ),
                                    onChanged: (String value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value;
                                        if (dropdownValue == "Remove") {
                                          showCustom(context, 1, "Nioda removed");
                                        }
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: body3(Neutral_2),
                                        ),
                                      );
                                    }).toList(),
                                  )
                                  // Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: Padding(
                                  //     padding: const EdgeInsets.all(8.0),
                                  //     child: Image.asset(
                                  //       "assets/images/menu2.png",
                                  //       height: 14,
                                  //       width: 14,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      // barrierDismissible: false, // user must tap button!
      barrierColor: Colors.black.withOpacity(0.7),

      builder: (BuildContext ctx) {
        return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                insetPadding: EdgeInsets.fromLTRB(24, 150, 24, 60),
                contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
                content: Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.56,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              Variable.favourite_place,
                              style: heading1,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/pink_location.png",
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Text(
                                "HCL Technologies Sector 126, Raipu Khadar, Noida, Uttar Pradesh",
                                style: body3(Neutral_2),
                              ))
                            ],
                          ),
                           SizedBox(
                            height: 20,
                          ),
                          Obx(() => TextFormField(
                                controller: favourite_place,
                                onChanged: (value) {
                                  setState(() {
                                    place(value);
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: Variable.enter_start_point,
                                  hintStyle: body3(Neutral_4_color),
                                  suffixIcon: place.toString() == "".toString() ||
                                          place.toString() == null.toString()
                                      ? SizedBox.shrink()
                                      : Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset(
                                            "assets/images/pink_tick.png",
                                            height: 20,
                                            width: 20,
                                          ),
                                        ),
                                  labelText: Variable.enter_label,
                                  labelStyle: caption2(Neutral_4_color),
                                  focusedBorder: UnderlineInputBorder(
                                    // borderRadius: BorderRadius.circular(8.0),
                    
                                    borderSide: BorderSide(
                                        color: Primary_1_color, width: 1),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    // borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                        color: Primary_1_color, width: 1),
                                  ),
                                ),
                              )),
                                SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: place_array.mapIndexed((index, element) => 
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    favourite_place.text = element;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right:12.0,bottom: 12),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Primary_3_color,
                                      borderRadius: BorderRadius.circular(18)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(15,8,15,8),
                                      child: Text(element,style: body3(Primary_1_color),),
                                    ),
                                  ),
                                ),
                              )
                            
                          ).toList()),
                           SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                  height: 42,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    boxShadow: [
                                      BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 8,
                      color: Color(0xffFBAEAE),
                                      )
                                    ],
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.topRight,
                                      colors: [
                      Color(0xffEC6A8F),
                      Color(0xffFBAEAE),
                                      ],
                                    ),
                                  ),
                                  child: Text(
                                     Variable.save,
                                    style: bold(White_color),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )));
      },
    );
  }
}
List place_array = ["Home","Office","School/University","Gym","Pub","Bar"];

// class map extends StatefulWidget {
//   const map({Key key}) : super(key: key);

//   @override
//   State<map> createState() => _mapState();
// }

// class _mapState extends State<map> {
//   @override
//   Widget build(BuildContext context) {
//     return Stac();
//   }
// }
