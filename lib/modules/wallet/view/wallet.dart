import 'dart:ui';
import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';

class wallet extends StatefulWidget {
  const wallet({Key key}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  List company_name = [
    "assets/images/add_company.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: White_color,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4,),
    // appbar
            appbar(
              title: Variable.my_wallet,
              textalign: Alignment.centerLeft,
              height: 60,
              decoration: BoxDecoration(
                color: White_color,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x000000).withOpacity(1),
                    offset: Offset(-2, 13),
                    blurRadius: 6,
                    spreadRadius: -18,
                  )
                ],
              ),
            ),
    // main code
           
            Expanded(
              child: ListView(
                children: [
                   SizedBox(
              height: 20,
            ),
                  Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Container(
                    height: 83,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Primary_1_color,
                        borderRadius: BorderRadius.circular(24)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(Variable.quick_rider_wallet,style: body2(White_color),))),
                                SizedBox(width: 10,),
                                Expanded(child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(Variable.wallet_points,style: title(White_color),)))
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, -1.18),
                          child: Container(
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/top_left_circle.png")),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25))),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.8, -0.6),
                          child: Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/white_circle.png"),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1, 1.36),
                          child: Container(
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/bottom_right_circle.png"),
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25))),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Text(Variable.add_your_wallet,style: body2(Neutral_1),),
              ),
              // SizedBox(
              //   height: 5,
              // ),
            
              Padding(
                padding: const EdgeInsets.only(left: 6, right: 18),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  children: company_name
                      .mapIndexed(
                        (index, element) => InkWell(
                          onTap: () {
                            setState(() {
                              company_name.add("assets/images/company_1.png");
                              company_name.add("assets/images/company_2.png");
                              company_name.add("assets/images/company_3.png");
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0, top: 20),
                            child: Container(
                                height: 64,
                                width: 101,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: White_color,
                                  boxShadow: [
                                    BoxShadow(
                                      // color: Colors.black.withOpacity(0.05),
                                      color: shadow_color,
                                      blurRadius: 40,
                                      spreadRadius: 0,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    element,
                                    // width: MediaQuery.of(context).size.width,
                                  ),
                                )),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
                ],
              ),
            ),
             SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
