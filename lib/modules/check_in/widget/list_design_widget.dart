import 'dart:ui';

import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';

RxInt is_ride_cancel = 0.obs;
List driver_info = [
    {
      "image":"assets/images/pic1.png",
      "driver_name":"Bernard Alvarado",
      "rating":"4.3",
      "review":"283",
      "desc":"Marathalli, Bengaluru, Karnataka, India, Madiwata, Hosur Road, Silk board,…",
      "time":"16:28",
      "percentage":"94%",
      "points":"56",
    },
     {
      "image":"assets/images/pic2.png",
      "driver_name":"Albert Einstine",
      "rating":"4.0",
      "review":"100",
      "desc":"Marathalli, Bengaluru, Karnataka, India, Madiwata, Hosur Road, Silk board,…",
      "time":"15:28",
      "percentage":"90%",
      "points":"50",
    },
     {
      "image":"assets/images/pic2.png",
      "driver_name":"Albert Einstine",
      "rating":"4.0",
      "review":"100",
      "desc":"Marathalli, Bengaluru, Karnataka, India, Madiwata, Hosur Road, Silk board,…",
      "time":"15:28",
      "percentage":"90%",
      "points":"50",
    },
    
    ];

// cancel_ride_alert
Future<void> cancel_ride_alert(BuildContext context) async {
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
              contentPadding: EdgeInsets.fromLTRB(20, 3, 20, 15),
              // actions: [

              // ],
              titlePadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              title: Image(image: AssetImage("assets/images/red_exclimation.png"),height: 72,width: 72,),
              // Text(
              //   Variable.state_change,
              //   textAlign: TextAlign.center,
              //   style: heading1,
              // ),
              content: SingleChildScrollView(
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0,25,0,0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Center(
                        // child: Text(
                        //   Variable.state_change,
                        //   style: heading1,
                        // ),
                        // ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12,0,12,0),
                            child: Text(
                             Variable.end_ride_confirm,
                              style:title(Neutral_1),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Expanded(child: Padding(
                            padding: const EdgeInsets.fromLTRB(12,0,12,0),
                            child: Text(Variable.end_ride_desc,style: body3(Neutral_2),),
                          )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    child: Text(
                                     Variable.no,
                                      style: body2(Neutral_2),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ),

                              //  Expanded(
                              //    child:
                            SizedBox(width: 3,),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    child: Text(
                                     Variable.yes,
                                      style: body2(Primary_1_color),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => trip_page()),
                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )));
    },
  );
}

// passengar pending alert
Future<void> passenger_pending_alert(BuildContext context) async {
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
              contentPadding: EdgeInsets.fromLTRB(20, 3, 20, 15),
              // actions: [

              // ],
              titlePadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              title: Image(image: AssetImage("assets/images/blue_exclimation.png"),height: 72,width: 72,),
              // Text(
              //   Variable.state_change,
              //   textAlign: TextAlign.center,
              //   style: heading1,
              // ),
              content: SingleChildScrollView(
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0,25,0,0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Center(
                        // child: Text(
                        //   Variable.state_change,
                        //   style: heading1,
                        // ),
                        // ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12,0,12,0),
                            child: Text(
                              Variable.passenger_pending,
                              style:title(Neutral_1),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Expanded(child: Padding(
                            padding: const EdgeInsets.fromLTRB(12,0,12,0),
                            child: Text(Variable.passenger_pending_desc,style: body3(Neutral_2),),
                          )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    child: Text(
                                     Variable.keep_waiting,
                                      style: body2(Neutral_2),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ),

                              //  Expanded(
                              //    child:
                            SizedBox(width: 3,),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    child: Text(
                                    Variable.start_anyway,
                                      style: body2(Primary_1_color),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )));
    },
  );
}

List<Widget> bottom_raider_design (BuildContext context) => [
 Obx(()=>  Column(
      children: [
          raider_design_index == 0?
         SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                        child:
           Column(
           
             children: [
               Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: driver_info.mapIndexed((index, element) => 
                        Padding(
                          padding: const EdgeInsets.only(right:14.0),
                          child: Container(
                            // fit: BoxFit.scaleDown,
                            child: Container(
                              width: MediaQuery.of(context).size.width *0.9,
                              // width: MediaQuery.of(context).size.width *0.5,
                              // height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                // color: Colors.transparent,
                                borderRadius: BorderRadius.circular(24),
                                boxShadow: [
                                  BoxShadow(
                                    color: shadow_color,
                                    blurRadius: 40,
                                    spreadRadius: 0,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          element["image"],
                                          height: 52,
                                          width: 52,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                     element["driver_name"].toString(),
                                                      style: title(Neutral_1),
                                                    ),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    Image.asset(
                                                      "assets/images/crown.png",
                                                      height: 24,
                                                      width: 24,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/star.png",
                                                    height: 12,
                                                    width: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    element["rating"].toString(),
                                                    style: caption1(Neutral_1),
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    element["review"].toString(),
                                                    style: caption2(Neutral_4_color),
                                                  ),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Image.asset(
                                                    "assets/images/grey_car.png",
                                                    height: 16,
                                                    width: 16,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      element["desc"].toString(),
                                      style: regular(Neutral_4_color),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 4),
                                          child: Image.asset(
                                            "assets/images/clock.png",
                                            height: 20,
                                            width: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              element["time"].toString(),
                                              style: selected_tab_style(Neutral_1),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 6),
                                              child: Text(
                                                "Time",
                                                style: caption2(Neutral_4_color),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.only(right: 6.0),
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            child: Image.asset(
                                              "assets/images/pink_chat.png",
                                              height: 20,
                                              width: 20,
                                            ),
                                          ),
                                        )),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 6.0),
                                              child: Text(
                                                element["percentage"].toString(),
                                                style: selected_tab_style(Neutral_1),
                                              ),
                                            ),
                                            Text(
                                              "Ontime",
                                              style: caption2(Neutral_4_color),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.only(right: 5),
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            child: Image.asset(
                                              "assets/images/pink_doller.png",
                                              height: 20,
                                              width: 20,
                                            ),
                                          ),
                                        )),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 14.0),
                                              child: Text(
                                                element["points"].toString(),
                                                textAlign: TextAlign.left,
                                                style: selected_tab_style(Neutral_1),
                                              ),
                                            ),
                                            Text(
                                              "Points",
                                              style: caption2(Neutral_4_color),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: SizedBox.shrink()
                                        ),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              raider_design_index(1);
                                            },
                                            child: Container(
                                                height: 40,
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
                                                  "Request",
                                                  style: bold(White_color),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )).toList()
                      
                    ),
             ],
           ),
        ):
               Padding(
                              padding: const EdgeInsets.fromLTRB(20, 18, 20, 18),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child:
                                                        Text("Ride in progress",
                                                        style: body2(Neutral_1),
                                                        )))),
                                        Expanded(
                                            child: Container(
                                          alignment: Alignment.centerRight,
                                          child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text("18 mins",
                                              style: body3(Primary_1_color),
                                              )),
                                        )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 1,
                                      color: divider_color,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Wrap(
                                            children: [
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  35)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                2.0),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          35)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(2),
                                                            child: Image.asset(
                                                              "assets/images/pic1.png",
                                                              height: 38,
                                                              width: 38,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  FittedBox(
                                                      fit: BoxFit.scaleDown,
                                                      child: Container(
                                                          width: 40,
                                                          child: Text("Ken",textAlign: TextAlign.center,
                                                          style: caption2(Neutral_1),
                                                          )))
                                                ],
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 22.0),
                                                child: Container(
                                                    child: Image.asset(
                                                  "assets/images/wheel.png",
                                                  height: 18,
                                                  width: 18,
                                                )),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: Primary_1_color,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  35)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                2.0),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: White_color,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          35)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(2),
                                                            child: Image.asset(
                                                              "assets/images/pic2.png",
                                                              height: 38,
                                                              width: 38,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  FittedBox(
                                                      fit: BoxFit.scaleDown,
                                                      child: Container(
                                                          width: 40,
                                                          child: Text("Jinny",textAlign: TextAlign.center,
                                                          style: caption2(Primary_1_color),
                                                          )))
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  35)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                2.0),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          35)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(2),
                                                            child: Image.asset(
                                                              "assets/images/pic3.png",
                                                              height: 40,
                                                              width: 40,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  FittedBox(
                                                      fit: BoxFit.scaleDown,
                                                      child: Container(
                                                          width: 40,
                                                          child: Text("Abert",textAlign: TextAlign.center,
                                                          style: caption2(Neutral_1),)))
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                              alignment: Alignment.centerRight,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(35),
                                                  color: Primary_3_color),
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Image.asset(
                                                  "assets/images/pink_search.png",
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              )),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    is_ride_cancel == 0?
                                    Row(
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              is_ride_cancel(1);
                                            },
                                            child: Container(
                                                height: 42,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(24),
                                                    color: White_color,
                                                    border: Border.all(
                                                        color: submit_cancel_color)),
                                                child: Text("Cancel",style: bold(submit_cancel_color),)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Expanded(
                                          child: InkWell(
                                            onTap: () async {
                                             await passenger_pending_alert(context);
                                                raider_design_index(0);
                                                
                
                                            },
                                            child: Container(
                                                height: 42,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          offset: Offset(0,3),
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
                                                child: Text("Check in",style: bold(White_color),)),
                                          ),
                                        ),
                                      ],
                                    ): InkWell(
                                            onTap: () async {
                                               is_ride_cancel(0);
                                               cancel_ride_alert(context);
                                               
                
                                            },
                                            child: Container(
                                                height: 42,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          offset: Offset(0,3),
                                                          blurRadius: 8,
                                                          color: accent_color,
                                                        )
                                                      ],
                                                 color: accent_color
                                                ),
                                                child: Text(Variable.end_ride,style: bold(White_color),)),
                                          ),

                                    // Text("hiiiiii"),
                                  ]),
                            ),
      ],
    ),
 )
  
];