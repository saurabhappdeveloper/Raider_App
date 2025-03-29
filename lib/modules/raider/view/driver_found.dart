import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';

class driver_found extends StatefulWidget {

  @override
  State<driver_found> createState() => _driver_foundState();
}

class _driver_foundState extends State<driver_found> {
 
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
      "group_name":"Rog Ket Noise Right",
      "total_member":"200",
      "active_member":"111"
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
      "group_name":"Rog Ket Noise Right",
      "total_member":"200",
       "active_member":"2"
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
      "group_name":"Rog Ket Noise Right",
      "total_member":"200",
       "active_member":"4"
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
      "group_name":"Rog Ket Noise Right",
      "total_member":"200",
       "active_member":"4"
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
      "group_name":"Rog Ket Noise Right",
      "total_member":"200",
       "active_member":"4"
    },
    
    ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: 
            Padding(
               padding: const EdgeInsets.fromLTRB(15,8,15,14.0),
              child: Column(
                children: matching_raider_design_widget(context,driver_info),
              ),
            ),
         
      
    );
  }
}
