import 'package:flutter/material.dart';
import 'package:flutter_app_circle/layout/constants/color.dart';
import 'package:flutter_app_circle/layout/constants/text_style.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.main,
        elevation: 0,
        actions: [Icon(Icons.edit)],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,),
        child: SingleChildScrollView(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/img/profile_Screen.png'),
                  radius: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Ebrahim Shaaban",style: AppTextStyles.cTextStyleTitle),
                    Text("Flutter",style: AppTextStyles.cTextStyleSubTitle),
                  ],
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
