import 'package:flutter/material.dart';

class Profileitem extends StatelessWidget {
  final String txt;
  final TextStyle style_txt;
  final Widget widget_icon;
  final Color Color_icon;
  final Function func;

  const Profileitem(this.txt,this.style_txt, this.widget_icon, this.Color_icon,this.func,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
     onTap: func(),

      title: Text(
       txt,
        style: style_txt,
      ),
      leading: widget_icon,
      iconColor:Color_icon,
    );
  }
}
