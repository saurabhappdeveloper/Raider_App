// list widget

import 'dart:ui';
import 'package:duration_picker/duration_picker.dart';
import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/check_in/view/check_in.dart';
import 'package:truckgo_new/modules/module.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import 'package:truckgo_new/modules/raider/view/raider_home_page.dart';

// state change alert
Future<void> _showMyDialog(BuildContext context) async {
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
              titlePadding: EdgeInsets.fromLTRB(20, 15, 20, 0),
              title: Text(
                Variable.state_change,
                textAlign: TextAlign.center,
                style: heading1,
              ),
              content: SingleChildScrollView(
                child: Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Center(
                        // child: Text(
                        //   Variable.state_change,
                        //   style: heading1,
                        // ),
                        // ),
                        Text(
                          Variable.alert_text1,
                          style: body3(Neutral_2),
                        ),

                        Row(
                          children: [
                            Text(
                              Variable.alert_text2,
                              style: body3(Primary_1_color),
                            ),
                            Text(
                              Variable.alert_text3,
                              style: body3(Neutral_2),
                            ),
                          ],
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
                              Container(
                                height: 15,
                                width: 1,
                                color: Dash_color,

                                // ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    child: Text(
                                      Variable.yes,
                                      style: body2(Primary_1_color),
                                    ),
                                    onTap: () {
                                      selected_tab_index(1);
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

// edit ride alert
Future<void> _edit_alert(BuildContext context) async {
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

              content: Obx(() => SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    selected_tab_index(0);
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
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 6, 8, 6),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  selected_tab_index == 0
                                                      ? "assets/images/pink_car_tab.png"
                                                      : "assets/images/black_car_tab.png",
                                                  height: 18,
                                                  width: 18,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Text(
                                                  Variable.find_ride,
                                                  style: body2(
                                                      selected_tab_index == 0
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
                                    selected_tab_index(1);
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
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 6, 8, 6),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  selected_tab_index == 1
                                                      ? "assets/images/pink_scooter.png"
                                                      : "assets/images/black_scooter.png",
                                                  height: 18,
                                                  width: 18,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Text(
                                                  Variable.offer_ride,
                                                  style: body2(
                                                      selected_tab_index == 1
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
                              height: 18,
                            ),
                            Column(
                                children: edit_ride_deign(
                                    context, selected_tab_index))
                          ]),
                    ),
                  ))));
    },
  );
}

// date and time  alert
RxBool is_date_selected = false.obs;
RxBool is_time_selected = false.obs;
RxString _selectedDate = ''.obs;
void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
  _selectedDate("");

  /// The argument value will return the changed date as [DateTime] when the
  /// widget [SfDateRangeSelectionMode] set as single.
  ///
  /// The argument value will return the changed dates as [List<DateTime>]
  /// when the widget [SfDateRangeSelectionMode] set as multiple.
  ///
  /// The argument value will return the changed range as [PickerDateRange]
  /// when the widget [SfDateRangeSelectionMode] set as range.
  ///
  /// The argument value will return the changed ranges as
  /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
  /// multi range.

  if (args.value is DateTime) {
    _selectedDate(DateFormat('E MM, yyyy').format(args.value));
    print("this is date");
    print(_selectedDate);
  }
}

Duration _duration = Duration(hours: 0, minutes: 0);
Future<void> _datetime_alert(BuildContext context) async {
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

              content: Obx(
                () => SingleChildScrollView(
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (is_date_selected == false) {
                                  return is_date_selected(true);
                                } else {
                                  return is_date_selected(false);
                                }
                              },
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      Variable.date,
                                      style: body2(Neutral_1),
                                    ),
                                  )),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Expanded(
                                      child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      _selectedDate.toString(),
                                      style: body2(Neutral_1),
                                    ),
                                  )),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Image.asset(
                                    is_date_selected == true
                                        ? "assets/images/black_arrow_up.png"
                                        : "assets/images/black_down_arrow.png",
                                    height: 12,
                                    width: 12,
                                  )
                                ],
                              ),
                            ),
                            is_date_selected == true
                                ?
                                // Container(
                                //   height: 50,
                                //   width: MediaQuery.of(context).size.width,
                                //   decoration: BoxDecoration(
                                //     color: Colors.red
                                //   ),
                                // ):
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.centerLeft,
                                    child: SfDateRangePicker(
                                      onSelectionChanged: _onSelectionChanged,
                                      view: DateRangePickerView.year,
                                    ),
                                  )
                                : SizedBox.shrink(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Variable.time,
                                  style: body2(Neutral_1),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      if (is_time_selected == false) {
                                        return is_time_selected(true);
                                      } else {
                                        return is_time_selected(false);
                                      }
                                    },
                                    child: Image.asset(
                                      is_time_selected == true
                                          ? "assets/images/black_arrow_up.png"
                                          : "assets/images/black_down_arrow.png",
                                      height: 12,
                                      width: 12,
                                    ))
                              ],
                            ),
                            is_time_selected == true
                                ? Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    width: MediaQuery.of(context).size.width,
                                    child: DurationPicker(
                                      duration: _duration,
                                      onChange: (val) {
                                        print(val);
                                      },
                                      snapToMins: 5.0,
                                    ))
                                // Container(
                                //     height: 50,
                                //     width: MediaQuery.of(context).size.width,
                                //     decoration: BoxDecoration(color: Colors.red),
                                //   )
                                : SizedBox.shrink(),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: InkWell(
                                onTap: () {
                                  _showMyDialog(context);
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
                                      Variable.set,
                                      style: bold(White_color),
                                    )),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              )));
    },
  );
}

// raider tab
List<Widget> tab_deign(
        BuildContext context, RxInt tab_index, String submit_text) =>
    [
      Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/gradient_dot.png",
                    height: 15,
                    width: 15,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/3_dots.png",
                    height: 14,
                    width: 12,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/blue_pin.png",
                    height: 15,
                    width: 15,
                  ),
                ],
              ),
              SizedBox(width: 14),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        controller: start_location,
                        onChanged: (value) {
                          start_location_string =
                              start_location.text.toString().obs;
                          // print(value);
                          print(start_location_string);
                        },
                        onTap: () {
                          start_location.text = currentAddress.toString();

                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => map_dashboard()),
                          // );
                        },
                        decoration: InputDecoration(
                          constraints:
                              BoxConstraints(minHeight: 0, maxHeight: 40),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: text_form_border)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: text_form_border)),

                          // icon: Icon(Icons.person),
                          hintText: Variable.choose_starting_point,
                          // suffixIcon: IconButton(
                          //   onPressed: (){
                          //     calculateDistance();
                          //   },
                          //   icon: Icon(Icons.close))
                          // labelText: 'Name *',
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: destination_location,
                          onChanged: (value) {
                            destination_location_string =
                                destination_location.text.toString().obs;
                            print(destination_location_string);
                          },
                          // onTap: () {
                          //   destination_location.text;
                          // },
                          decoration: InputDecoration(
                            // icon: Icon(Icons.person),
                            constraints:
                                BoxConstraints(minHeight: 0, maxHeight: 40),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: text_form_border)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: text_form_border)),
                            hintText: Variable.choose_destination,
                            // labelText: 'Name *',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Image.asset(
                            "assets/images/black_clock.png",
                            height: 13,
                            width: 13,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.34,
                          child: TextFormField(
                            onTap: () {},
                            decoration: InputDecoration(
                              // icon: Icon(Icons.person),
                              constraints:
                                  BoxConstraints(minHeight: 0, maxHeight: 40),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: text_form_border)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: text_form_border)),
                              hintText: Variable.pickup_time,
                              // labelText: 'Name *',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        Image.asset(
                          tab_index == 0
                              ? "assets/images/students.png"
                              : "assets/images/black_car.png",
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.34,
                          child: TextFormField(
                            onTap: () {
                              if (tab_index == 1) {
                                _edit_alert(context);
                              }
                            },
                            decoration: InputDecoration(
                              // icon: Icon(Icons.person),
                              constraints:
                                  BoxConstraints(minHeight: 0, maxHeight: 40),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: text_form_border)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: text_form_border)),
                              hintText: tab_index == 0
                                  ? Variable.number_of_people
                                  : Variable.select_vehicle,

                              // labelText: 'Name *',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Image.asset(
                  "assets/images/note.png",
                  height: 17,
                  width: 17,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    onTap: () {},
                    decoration: InputDecoration(
                      // icon: Icon(Icons.person),
                      constraints: BoxConstraints(minHeight: 0, maxHeight: 40),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: text_form_border)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: text_form_border)),
                      hintText: Variable.special_instruction,
                      // labelText: 'Name *',
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: InkWell(
              onTap: () {
                if (submit_text == Variable.update) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => check_in(
                              title: Variable.raider_route,
                              is_ride_request: 0,
                            )),
                  );
                } else if (submit_text == Variable.find) {
                  // print("distance calculated");

                  // calculateDistance();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => raid_not_found()));
                } else if (submit_text == Variable.offer) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => driver_found_mainscreen()));
                }
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
                    submit_text,
                    style: bold(White_color),
                  )),
            ),
          ),
        ],
      ),
    ];

// raider not found tab
RxInt selected_tab_index = 0.obs;
List<Widget> raider_not_found_design(BuildContext context, RxInt tab_index) => [
      Obx(() => Column(
            children: [
              tab_index == 0
                  ? SingleChildScrollView(
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
                                      selected_tab_index(0);
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
                                                        selected_tab_index == 0
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
                                      _showMyDialog(context);
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
                                                        selected_tab_index == 1
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
                              ///////////////////////////////////////////////////////////////////////////////////////////
                              Column(
                                  children: tab_deign(
                                      context,
                                      selected_tab_index,
                                      selected_tab_index == 0
                                          ? Variable.update
                                          : Variable.offer))
                            ]),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(12, 18, 12, 18),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: light_white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/images/black_car_tab.png",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "No raiders available at the moment",
                                      style: body3(Neutral_2),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Request by contact",
                                      style: body2(Primary_1_color),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

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
                    )
            ],
          ))

      // Column(children: raider_not_found_design(context,0),)
    ];

List<String> textList = ["car", "hondahondahondahonda", "maruti"];
RxString _currentItemSelected = "".obs;
RxBool is_checked = false.obs;
TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);
void _selectTime(BuildContext context) async {
  final TimeOfDay newTime = await showTimePicker(
    context: context,
    initialTime: _time,
  );
  if (newTime != null) {
    _time = newTime;
  }
}

List<Widget> edit_ride_deign(BuildContext context, RxInt tab_index) => [
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Variable.body_type,
                      style: caption2(Neutral_4_color),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.34,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(width: 1, color: Neutral_4_color),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              Obx(() => Expanded(
                                  child: Container(
                                      height: 22,
                                      child: SingleChildScrollView(
                                          child: Text(_currentItemSelected
                                              .toString()))))),
                              PopupMenuButton<String>(
                                itemBuilder: (context) {
                                  return textList.map((str) {
                                    return PopupMenuItem(
                                      value: str,
                                      child: Text(str),
                                    );
                                  }).toList();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    // Text(_currentItemSelected),
                                    Image.asset(
                                      "assets/images/black_down_arrow.png",
                                      height: 12,
                                      width: 12,
                                    ),
                                  ],
                                ),
                                onSelected: (value) {
                                  print('!!!===== $value');
                                  _currentItemSelected(value);
                                },
                              )
                              // Image.asset("assets/images/black_down_arrow.png",height: 12,width: 12,),
                            ],
                          ),
                        )),
                  ],
                ),
              
            SizedBox(
              width: 6,
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Variable.license_plate,
                      style: caption2(Neutral_4_color),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.34,
                        child: TextFormField(
                          style: body2(Neutral_1),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 23),
                            constraints:
                                BoxConstraints(maxHeight: 30, maxWidth: 0),
                            // hintText: Variable.license_plate,
                            // hintStyle: body3(Neutral_4_color),

                            // labelText: Variable.license_plate,
                            // labelStyle: caption2(Neutral_4_color),
                            focusedBorder: UnderlineInputBorder(
                              // borderRadius: BorderRadius.circular(8.0),

                              borderSide:
                                  BorderSide(color: Neutral_4_color, width: 1),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              // borderRadius: BorderRadius.circular(8.0),
                              borderSide:
                                  BorderSide(color: Neutral_4_color, width: 1),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Variable.fuel_per_km,
                    style: caption2(Neutral_4_color),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.34,
                      child: TextFormField(
                        style: body2(Neutral_1),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 23),
                          constraints:
                              BoxConstraints(maxHeight: 30, maxWidth: 0),
                          // hintText: Variable.license_plate,
                          // hintStyle: body3(Neutral_4_color),

                          // labelText: Variable.license_plate,
                          // labelStyle: caption2(Neutral_4_color),
                          focusedBorder: UnderlineInputBorder(
                            // borderRadius: BorderRadius.circular(8.0),

                            borderSide:
                                BorderSide(color: Neutral_4_color, width: 1),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            // borderRadius: BorderRadius.circular(8.0),
                            borderSide:
                                BorderSide(color: Neutral_4_color, width: 1),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Variable.seat_offering,
                    style: caption2(Neutral_4_color),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.34,
                      child: TextFormField(
                        style: body2(Neutral_1),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 23),
                          constraints:
                              BoxConstraints(maxHeight: 30, maxWidth: 0),
                          // hintText: Variable.license_plate,
                          // hintStyle: body3(Neutral_4_color),

                          // labelText: Variable.license_plate,
                          // labelStyle: caption2(Neutral_4_color),
                          focusedBorder: UnderlineInputBorder(
                            // borderRadius: BorderRadius.circular(8.0),

                            borderSide:
                                BorderSide(color: Neutral_4_color, width: 1),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            // borderRadius: BorderRadius.circular(8.0),
                            borderSide:
                                BorderSide(color: Neutral_4_color, width: 1),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 16,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Variable.model_brand,
              style: caption2(Neutral_4_color),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  style: body2(Neutral_1),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 23),
                    constraints: BoxConstraints(maxHeight: 30, maxWidth: 0),
                    // hintText: Variable.license_plate,
                    // hintStyle: body3(Neutral_4_color),

                    // labelText: Variable.license_plate,
                    // labelStyle: caption2(Neutral_4_color),
                    focusedBorder: UnderlineInputBorder(
                      // borderRadius: BorderRadius.circular(8.0),

                      borderSide: BorderSide(color: Neutral_4_color, width: 1),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      // borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Neutral_4_color, width: 1),
                    ),
                  ),
                )),
          ],
        ),
      ),
      SizedBox(
        height: 16,
      ),
      tab_index == 0
          ? Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Variable.features,
                    style: caption2(Neutral_4_color),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        style: body2(Neutral_1),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 23),
                          constraints:
                              BoxConstraints(maxHeight: 30, maxWidth: 0),
                          // hintText: Variable.license_plate,
                          // hintStyle: body3(Neutral_4_color),

                          // labelText: Variable.license_plate,
                          // labelStyle: caption2(Neutral_4_color),
                          focusedBorder: UnderlineInputBorder(
                            // borderRadius: BorderRadius.circular(8.0),

                            borderSide:
                                BorderSide(color: Neutral_4_color, width: 1),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            // borderRadius: BorderRadius.circular(8.0),
                            borderSide:
                                BorderSide(color: Neutral_4_color, width: 1),
                          ),
                        ),
                      )),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() => InkWell(
                        onTap: () {
                          if (is_checked == false) {
                            print("inside if");
                            return is_checked(true);
                          }
                          {
                            print("inside else");
                            return is_checked(false);
                          }
                          // print(is_checked);
                        },
                        child: Image.asset(
                          is_checked == true
                              ? "assets/images/check.png"
                              : "assets/images/uncheck.png",
                          height: 15,
                          width: 15,
                        ),
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Variable.required_pilion_helmet,
                            style: body3(Neutral_2),
                          ),
                          Text(
                            Variable.uncheck_helmet,
                            style: body3(Neutral_4_color),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
      SizedBox(
        height: 22,
      ),
      Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: 42,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: White_color,
                      border: Border.all(color: Primary_1_color)),
                  child: Text(
                    Variable.cancel,
                    style: bold(Primary_1_color),
                  )),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                _datetime_alert(context);
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
                    Variable.select,
                    style: bold(White_color),
                  )),
            ),
          ),
        ],
      ),
    ];

// matching raider widget
List<Widget> matching_raider_design_widget(
        BuildContext context, List tab_array) =>
    [
      Column(
          children: tab_array
              .mapIndexed((index, element) =>
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  Obx(() => selected_driver_tab_index == 3
                      ? Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 20, 20, 60),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/members.png",
                                                    height: 50,
                                                    width: 50,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        element["group_name"],
                                                        style: heading1,
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            element[
                                                                "total_member"],
                                                            style: body3(
                                                                Neutral_2),
                                                          ),
                                                          SizedBox(
                                                            width: 3,
                                                          ),
                                                          Text("members",
                                                              style: body3(
                                                                  Neutral_2)),
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Image.asset(
                                                            "assets/images/black_dot.png",
                                                            height: 4,
                                                            width: 4,
                                                          ),
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                              element[
                                                                  "active_member"],
                                                              style: body3(
                                                                  semantic1_color)),
                                                          SizedBox(
                                                            width: 3,
                                                          ),
                                                          Text("active",
                                                              style: body3(
                                                                  semantic1_color)),
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ]))),
                            ),
                            Positioned(
                              top: 110,
                              left: MediaQuery.of(context).size.width * 0.55,
                              // alignment: Alignment.bottomCenter,
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.35,
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    gradient: LinearGradient(
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                      colors: [
                                        Color(0xfffaaeae),
                                        Color(0xfff27e7e)
                                      ],
                                    )),
                                child: Text(
                                  Variable.invite,
                                  style: bold(White_color),
                                ),
                              ),
                            )
                          ],
                        )
                      : Padding(
                          padding: const EdgeInsets.only(bottom: 14.0, top: 8),
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
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 20, 20),
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
                                                    "assets/images/star.png",
                                                    height: 12,
                                                    width: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    element["rating"]
                                                        .toString(),
                                                    style: caption1(Neutral_1),
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    element["review"]
                                                        .toString(),
                                                    style: caption2(
                                                        Neutral_4_color),
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
                                      textAlign: TextAlign.left,
                                      style: regular(Neutral_4_color),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 4),
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
                                              style:
                                                  selected_tab_style(Neutral_1),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 6),
                                              child: Text(
                                                "Time",
                                                style:
                                                    caption2(Neutral_4_color),
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
                                              "assets/images/pink_chat.png",
                                              height: 20,
                                              width: 20,
                                            ),
                                          ),
                                        )),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 6.0),
                                              child: Text(
                                                element["percentage"]
                                                    .toString(),
                                                style: selected_tab_style(
                                                    Neutral_1),
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
                                          padding:
                                              const EdgeInsets.only(right: 5),
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
                                              padding: const EdgeInsets.only(
                                                  right: 14.0),
                                              child: Text(
                                                element["points"].toString(),
                                                textAlign: TextAlign.left,
                                                style: selected_tab_style(
                                                    Neutral_1),
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
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                                height: 35,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24),
                                                    color: White_color,
                                                    border: Border.all(
                                                        color:
                                                            Primary_1_color)),
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
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          passenger_tab()));
                                            },
                                            child: Container(
                                                height: 35,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
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
                        )))
              .toList())
    ];
