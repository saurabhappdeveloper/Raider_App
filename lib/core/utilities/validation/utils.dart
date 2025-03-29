// ignore_for_file: deprecated_member_use, avoid_print




import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';

class Utils {
  static void displayErrorPrint({String message}) => debugPrint(message);

  static showMessage({String title, String message, Color color}) async {
    Get.snackbar(title, message,
        isDismissible: true,
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: color ?? const Color(0xFF172B4D),
        backgroundGradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff172B4D), Color(0xff18163C)]),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        padding:
            const EdgeInsets.only(top: 10, bottom: 16, left: 23, right: 23),
        titleText: title != null
            ? Text(title,
                style: normalRubikSize(
                    fontSize: 16, color: const Color(0xffffffff)))
            : Container(),
        messageText: message != null
            ? Text(message,
                style: normalRubikSize(
                    fontSize: 13, color: const Color(0xffB3BAC5)))
            : Container(),
        forwardAnimationCurve: Curves.easeOut,
        reverseAnimationCurve: Curves.easeOut,
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 16);
    await Future.delayed(const Duration(seconds: 6));
  }

  static showMessageTop({String title, String message, Color color}) async {
    Get.snackbar(title, message,
        isDismissible: true,
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: color ?? const Color.fromRGBO(253, 120, 71, 1),
        backgroundGradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(253, 120, 71, 1),
              Color.fromRGBO(253, 120, 71, 1)
            ]),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        padding:
            const EdgeInsets.only(top: 16, bottom: 16, left: 23, right: 23),
        titleText: title != null
            ? Text(title,
                style: normalRubikSize(
                    fontSize: 16, color: const Color(0xffffffff)))
            : Container(),
        messageText: message != null
            ? Text(message,
                style: normalRubikSize(fontSize: 13, color: Colors.black))
            : Container(),
        forwardAnimationCurve: Curves.easeOut,
        reverseAnimationCurve: Curves.easeOut,
        snackPosition: SnackPosition.TOP,
        borderRadius: 16);
    await Future.delayed(const Duration(seconds: 10));
  }

  // static Future selectImage(Rx<File> image) async {
  //   final pickedFile = await ImagePicker.pickImage(source: ImageSource.gallery);
  //   print(pickedFile);
  //   if (pickedFile.path != null) {
  //     image.value = File(pickedFile.path);
  //     final bytes = image.value.readAsBytesSync().lengthInBytes;
  //     print(bytes);
  //     final kb = bytes / 1024;
  //     if (kb < 2000) {
  //       print("t");
  //       return true;
  //     } else {
  //       print("f");
  //       showMessage(message: 'Your image size should be below then 2mb');
  //       image.value = File('');
  //       return false;
  //     }
  //   } else {
  //     image.value = File('');
  //     return false;
  //   }
  // }
}
