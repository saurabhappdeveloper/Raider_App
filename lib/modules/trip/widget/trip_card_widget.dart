import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';

class trip_card_widget extends StatefulWidget {
  const trip_card_widget({Key key}) : super(key: key);

  @override
  State<trip_card_widget> createState() => _trip_card_widgetState();
}

class _trip_card_widgetState extends State<trip_card_widget> {
  List driver_info = [
    {
      "image": "assets/images/pic1.png",
      "driver_name": "Bernard Alvarado",
      "rating": "4.3",
      "review": "283",
      "desc":
          "Marathalli, Bengaluru, Karnataka, India, Madiwata, Hosur Road, Silk board,…",
      "time": "16:28",
      "percentage": "94%",
      "points": "56",
    },
    {
      "image": "assets/images/pic2.png",
      "driver_name": "Albert Einstine",
      "rating": "4.0",
      "review": "100",
      "desc":
          "Marathalli, Bengaluru, Karnataka, India, Madiwata, Hosur Road, Silk board,…",
      "time": "15:28",
      "percentage": "90%",
      "points": "50",
    },
    {
      "image": "assets/images/pic2.png",
      "driver_name": "Albert Einstine",
      "rating": "4.0",
      "review": "100",
      "desc":
          "Marathalli, Bengaluru, Karnataka, India, Madiwata, Hosur Road, Silk board,…",
      "time": "15:28",
      "percentage": "90%",
      "points": "50",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
width: MediaQuery.of(context).size.width, 
decoration: BoxDecoration(
   boxShadow: [
                                BoxShadow(
                                  color: shadow_color,
                                  blurRadius: 40,
                                  spreadRadius: 0,
                                  offset: Offset(0, 4),
                                ),
                              ],
),     
child:  SingleChildScrollView(
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: driver_info
                  .mapIndexed((index, element) => Padding(
                        padding: const EdgeInsets.fromLTRB(20,8,20,14.0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: White_color,
                              borderRadius: BorderRadius.circular(24),
                             
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        element["image"],
                                        height: 40,
                                        width: 40,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    element["driver_name"]
                                                        .toString(),
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
                                                  element["rating"].toString(),
                                                  style: caption1(Neutral_1),
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  "(${element["review"]})".toString(),
                                                  style:
                                                      caption2(Neutral_4_color),
                                                ),
                                                
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                       SizedBox(width: 10,),
                                      Column(
                                        children: [
                                          Text("8.7",style: body3(Neutral_4_color)),
                                            Text(Variable.km,style: body3(Neutral_4_color),),
                                        ],
                                      ),
                                      SizedBox(width: 24,),
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
                                          Image.asset("assets/images/3_dots.png",height: 10,width: 10,),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width:
                                                  MediaQuery.of(context).size.width,
                                              child: Text(
                                                "Parateek Wisteria Sector 77, Nioda, Uttar Praaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                                style: body3(Neutral_2),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(bottom: 2),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
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
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            element["time"].toString(),
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
                                      Expanded(
                                          child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 6.0),
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
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 6.0),
                                            child: Text(
                                              element["percentage"].toString(),
                                              style:
                                                  body2(Neutral_1),
                                            ),
                                          ),
                                          Text(
                                              Variable.drop,
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
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 14.0),
                                            child: Text(
                                              element["points"].toString(),
                                              textAlign: TextAlign.left,
                                              style:
                                                  body2(Neutral_1),
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
                                ],
                              ),
                            ),
                          ),
                        ),
                      ))
                  .toList()),
        
      ),
    );
  }
}
