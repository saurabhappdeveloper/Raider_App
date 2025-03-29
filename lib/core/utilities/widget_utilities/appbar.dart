import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';

class appbar extends StatefulWidget {
  final String title;
  final AlignmentGeometry textalign;
  final Color icon1_color;
  final Color icon2_color;
  final Widget icon1;
  final Widget icon2;
  final Widget main_icon;
  final VoidCallback icon1_onpressed;
  final VoidCallback icon2_onpressed;
  final VoidCallback back_onpressed;
  final Widget child;
  final BoxDecoration decoration;
  final double height;
  final EdgeInsetsGeometry child_padding;
  final double bottom_padding;

  const appbar(
      {Key key,
      this.title,
      this.textalign,
      this.icon1,
      this.icon2,
      this.icon1_onpressed,
      this.icon2_onpressed,
      this.child,
      this.back_onpressed,
      this.decoration,
      this.height = null,
      this.main_icon, this.icon1_color, this.icon2_color, this.child_padding, this.bottom_padding = 0.0})
      : super(key: key);

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: widget.decoration,
      child: Padding(
        padding:  EdgeInsets.fromLTRB(0, 10, 0, widget.bottom_padding),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:18,right: 18),
              child: Row(
                children: [
                  InkWell(
                      onTap: widget.back_onpressed,
                      child: widget.main_icon == null
                          ? Image.asset(
                              "assets/images/back_arrow.png",
                              height: 20,
                              width: 20,
                            )
                          : widget.main_icon),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: 
                      widget.title == null?
                      SizedBox.shrink():
                      Container(
                    alignment: widget.textalign,
                    child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          widget.title,
                          style: heading1,
                        )),
                  )
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  widget.icon1 != null
                      ? InkWell(
                          onTap: widget.icon1_onpressed,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: 
                                widget.icon1_color == null?
                                Primary_3_color: widget.icon1_color),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: widget.icon1),
                          ),
                        )
                      : SizedBox.shrink(),
                  widget.icon2 != null
                      ? SizedBox(
                          width: 12,
                        )
                      : SizedBox.shrink(),
                  widget.icon2 != null
                      ? InkWell(
                          onTap: widget.icon2_onpressed,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color:  widget.icon1_color == null?
                                Primary_3_color: widget.icon1_color),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: widget.icon2),
                          ),
                        )
                      : SizedBox.shrink()
                ],
              ),
            ),
            widget.child == null ? SizedBox.shrink() : Padding(
              padding: widget.child_padding == null?
              EdgeInsets.only(left: 18,right: 18):
              widget.child_padding,
              child: widget.child,
            )
          ],
        ),
      ),
    );
  }
}
