import 'package:truckgo_new/modules/module.dart';
import 'package:truckgo_new/modules/trip/widget/trip_card_widget.dart';

import '../../../core/core.dart';

class trip_page extends StatefulWidget {
  const trip_page({Key key}) : super(key: key);

  @override
  State<trip_page> createState() => _trip_pageState();
}

class _trip_pageState extends State<trip_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
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
        title: Variable.trip_detailed,
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
        height: 22,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0),
                            child: Container(
                              child: Text(
                                "Parateek Wisteria Sector 77, Nioda, Uttar Pra",
                                style: body3(Neutral_2),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: Container(
                              child: Text(
                                "HCL Technologies Sector 126, Raipu Khadar, Pra",
                                style: body3(Neutral_2),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                              "assets/images/pink_clock.png",
                              height: 18,
                              width: 18,
                            ),
                          SizedBox(width: 6,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "20 mins".toString(),
                                style: body2(Neutral_1),
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
                        ],
                      ),
                    ),
                  ),
                )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    // flex: 1,
                    child: Container(
                  alignment: Alignment.center,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                            "assets/images/pink_doller.png",
                            height: 18,
                            width: 18,
                          ),
                        SizedBox(width: 6,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "97".toString(),
                              style: body2(Neutral_1),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 6),
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
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerRight,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Image.asset(
                            "assets/images/fuel.png",
                            height: 18,
                            width: 18,
                          ),
                        SizedBox(width: 6,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "5.0pts/Km".toString(),
                              style: body2(Neutral_1),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: Text(
                                "Fuel Points",
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

      Expanded(child: trip_card_widget()),
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
                                    onTap: () {
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
                                          Variable.rate_passenger,
                                          style: bold(White_color),
                                        )),
                                  ),
                                ),
              ),
    ),
    )
    );
  }
}
