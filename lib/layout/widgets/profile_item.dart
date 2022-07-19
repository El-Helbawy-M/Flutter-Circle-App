import 'package:flutter/material.dart';

class Profileitem extends StatelessWidget {
  final String txt;
  final TextStyle style_txt;
  final Widget widget_icon;
  final Color Color_icon;

  const Profileitem(this.txt,this.style_txt, this.widget_icon, this.Color_icon,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
       txt,
        style: style_txt,
      ),
      leading: widget_icon,
      iconColor:Color_icon,
    );
  }
}
