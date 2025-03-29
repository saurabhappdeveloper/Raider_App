import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';

class passenger_card_widget extends StatefulWidget {
  final int index;
  const passenger_card_widget({Key key, this.index=null}) : super(key: key);

  @override
  State<passenger_card_widget> createState() => _passenger_card_widgetState();
}

class _passenger_card_widgetState extends State<passenger_card_widget> {
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
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: driver_info.mapIndexed((index, element) => 
            Padding(
              padding: const EdgeInsets.fromLTRB(15,8,15,14.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: White_color,
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
                                  "assets/images/pink_clock.png",
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
                        widget.index != 0?
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                    height: 35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: White_color,
                                        border: Border.all(color: Primary_1_color)),
                                    child: Text(
                                      "Route",
                                      style: bold(Primary_1_color),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                    height: 35,
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
                        ):
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                    height: 35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: White_color,
                                        border: Border.all(color: Primary_1_color)),
                                    child: Text(
                                      Variable.route,
                                      style: bold(Primary_1_color),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                    height: 35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: White_color,
                                        border: Border.all(color: accent_color)),
                                    child: Text(
                                      Variable.decline,
                                      style: bold(accent_color),
                                    )),
                              ),
                            ),
                             SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                    height: 35,
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
      
    );
  }
}
