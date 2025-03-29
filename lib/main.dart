import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:focused_menu/modals.dart';
import 'package:truckgo_new/modules/check_in/view/check_in.dart';
import 'package:truckgo_new/modules/check_out/view/check_out.dart';
import 'package:truckgo_new/modules/passenger/view/passenger_tab.dart';
import 'package:truckgo_new/modules/raider/view/raider_home_page.dart';
import 'package:truckgo_new/modules/module.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:truckgo_new/modules/trip/view/trip_page.dart';


void main() {
  runApp( MyApp());
  
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: 
      // driver_found_mainscreen()
      // check_in(),
      // wallet()
      raider_home_page()
      // raid_not_found()
      // map_dashboard()
      // trip_page()
      // passenger_tab()
      // check_out()
    );
  }
}


