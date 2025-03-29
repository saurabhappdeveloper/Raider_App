
//import 'package:ithink_logistics/module/app_module.dart';


import 'package:truckgo_new/core/core.dart';

class ValidationWidget extends StatelessWidget {
  final String valueInput;
  final String valueInputSecond;
  final bool isClicked;
  final bool isShow;
  final bool isWidthStart;
  final String validationType;
  const ValidationWidget({
    Key key,
    @required this.valueInput,
    this.valueInputSecond,
    this.validationType,
    this.isClicked = false,
    this.isShow = false,
    this.isWidthStart = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValidationHelper.checkFunction(
                type: validationType,
                valueInput: valueInput,
                valueInputSecond: valueInputSecond) ==
            null
        ? Container()
        : isClicked
            ? displayError(validationType)
            : isShow
                ? Container()
                : displayError(validationType);
  }

  displayError(String validationType) {
    return Column(children: [
      isWidthStart ? const SizedBox(height: 8) :  const SizedBox(height: 8),
      Row(children: [
        isWidthStart ? const SizedBox(width: 40) : Container(),
        Expanded(
            child: ValidationHelper.displayText(
                text: ValidationHelper.checkFunction(
                    type: validationType,
                    valueInput: valueInput,
                    valueInputSecond: valueInputSecond)))
      ])
    ]);
  }
}
