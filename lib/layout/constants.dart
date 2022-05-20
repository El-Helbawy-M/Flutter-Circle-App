import 'package:flutter/material.dart';

//This file is created for crateing the constant values and constructing the theme of the app

//================= Rules =================
// 1- For anu variable you will need to follow this style:
//      * Start the name with small (c)
//      * Then write the name of the data type (ex: cString<variable name>)
//      * At the end write the name of the variable like this (const String cStringName = "fatakat")
//      * the style : c<Data type name><variable name>
// 2- Soon...
//================================================================================================
//================================================================================================

//=============================================== App Theme ===============================================
//================= Notes =================
//Main color : for some widgets like the containers or app Bar or any thing that takes a big space on the screen

//Background Color : for the backGround of the screens or the button or dialogs

//Second Color : for braking the domenation of the main color like of you have an app bar and it's color is white
//then you can break the app bar's color with blue as a second color in icon button or title text and so on
//=========================================

//============== Color Guide ==============
//Main: white color #ffffff
//Second: blue color #4fbef0 (like flutter logo)
//Background: white color #ffffff
//=========================================

const Color cColorMain = Colors.white;
const Color cColorSecond = Color(0xff4fbef0);
const Color cColorBackground = Colors.white;

//=============================================== Text Styles ===============================================

// size: 30 , weight: bold , color: black
const TextStyle cTextStyleTitle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

// size: 20 , weight: bold , color: black
const TextStyle cTextStyleSmallTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

// size: 15 , weight: normal , color: grey
const TextStyle cTextStyleSubTitle = TextStyle(fontSize: 15, color: Colors.grey);

    


