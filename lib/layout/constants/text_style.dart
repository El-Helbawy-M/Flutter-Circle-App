import 'package:flutter/material.dart';
import 'package:flutter_app_circle/layout/Constants/color.dart';

//============== TextStyle Guide ==============
//============== info:
//AppTextStyles class will help you to use the main textsyle of the app

//============== rules:
// - for the comments go to the up side of the variable
//   add the comment of your new variable in this format
//   [<properity name>: <value>],
//
//   note: [] mean that you can add one or more
//   ex: size: 30 , weight: bold , color: black
//==============
//=========================================

class AppTextStyles {
  // size: 30 , weight: bold , color: black
  static const TextStyle cTextStyleTitle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // size: 20 , weight: bold , color: black
  static const TextStyle cTextStyleSmallTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  // size: 15 , weight: normal , color: grey
  static const TextStyle cTextStyleSubTitle = TextStyle(fontSize: 15, color: AppColor.grey);

  // size: 16 , weight: bold , color: blue
  static const TextStyle cTextStyleBoldlTitle =TextStyle(fontSize: 16, color: AppColor.second,fontWeight: FontWeight.bold);
}
