import 'package:truckgo_new/modules/module.dart';
import 'package:truckgo_new/modules/trip/widget/trip_card_widget.dart';

import '../../../core/core.dart';

class check_out extends StatefulWidget {
  const check_out({Key key}) : super(key: key);

  @override
  State<check_out> createState() => _check_outState();
}

class _check_outState extends State<check_out> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        // appbar
        appbar(
          // height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: White_color,
            boxShadow: [
              BoxShadow(
                color: Color(0x14000000),
                blurRadius: 8,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          back_onpressed: () {
            Navigator.pop(context);
          },
          title: Variable.checkout_details,
          textalign: Alignment.centerLeft,
          icon2: Image.asset(
            "assets/images/map.png",
            height: 24,
            width: 24,
          ),
          child_padding: EdgeInsets.all(0),
          bottom_padding: 20,
        ),

        SizedBox(
          height: 10,
        ),

        Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/pic1.png",
                            height: 40,
                            width: 40,
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
                                        "Bernard Alvarado".toString(),
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
                                      "assets/images/black_star.png",
                                      height: 12,
                                      width: 12,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "4.3",
                                      style: caption1(Neutral_1),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "(283)".toString(),
                                      style: caption2(Neutral_4_color),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Lorem ipsum dolor sit amet consectetur dolor sit amet consectetur",
                            style: regular(Neutral_4_color),
                            textAlign: TextAlign.start,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/gradient_dot.png",
                                height: 8,
                                width: 8,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Image.asset(
                                "assets/images/3_dots.png",
                                height: 10,
                                width: 10,
                              ),
                              // Dash(
                              //     direction: Axis.vertical,
                              //     dashGap: 3,
                              //     length: 12,
                              //     dashBorderRadius: 15,
                              //     // dashLength: 12,
                              //     dashColor: Dash_color),
                              SizedBox(
                                height: 2,
                              ),
                              Image.asset(
                                "assets/images/blue_pin.png",
                                height: 12,
                                width: 12,
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Parateek Wisteria Sector 77, Nioda, Uttar Praaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                    style: body3(Neutral_2),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "HCL Technologies Sector 126, Raipu Khadar, Praaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                      style: body3(Neutral_2),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Container(
                            alignment: Alignment.topLeft,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: Image.asset(
                                      "assets/images/pink_clock.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "20 min".toString(),
                                        style: body2(Neutral_1),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 6),
                                        child: Text(
                                          Variable.pickup,
                                          style: caption2(Neutral_4_color),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )),
                          SizedBox(
                            width: 6,
                          ),
                          Expanded(
                              child: Container(
                            alignment: Alignment.topCenter,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: Image.asset(
                                      "assets/images/fuel.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "5.0pts/Km",
                                        style: body2(Neutral_1),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 6),
                                        child: Text(
                                          "Fuel Point",
                                          style: caption2(Neutral_4_color),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )),
                          SizedBox(
                            width: 6,
                          ),
                          Expanded(
                              child: Container(
                            alignment: Alignment.topRight,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: Image.asset(
                                      "assets/images/pink_doller.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "96".toString(),
                                        style: body2(Neutral_1),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 6),
                                        child: Text(
                                          "Points",
                                          style: caption2(Neutral_4_color),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
        child: BottomAppBar(
          // elevation: 0,
          color: White_color,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              // radius: ,
              onTap: () {},
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
                    color: Color(0xffFBAEAE),
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.topRight,
                    //   colors: [
                    //     Color(0xffEC6A8F),
                    //     Color(0xffFBAEAE),
                    //   ],
                    // ),
                  ),
                  child: Text(
                    Variable.rate_rider,
                    style: bold(White_color),
                  )),
            ),
          ),
        ),
      ),
    ));
  }
}
