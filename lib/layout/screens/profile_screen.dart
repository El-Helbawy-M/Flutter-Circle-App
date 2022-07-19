import 'package:flutter/material.dart';
import 'package:flutter_app_circle/layout/constants/color.dart';
import 'package:flutter_app_circle/layout/constants/text_style.dart';

import '../widgets/profile_item.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.main,
        elevation: 0,
        actions: const [Icon(Icons.edit)],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: SingleChildScrollView(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/img/profile_Screen.png'),
                  radius: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Ebrahim Shaaban",
                        style: AppTextStyles.cTextStyleTitle),
                    Text("Flutter", style: AppTextStyles.cTextStyleSubTitle),
                  ],
                ),
              ],
            ),
            const Profileitem("+21014582492", AppTextStyles.cTextStyleSubTitle,
                Icon(Icons.phone), AppColor.grey),
            const Profileitem(
                "ebrahimsh2019@gmail.com",
                AppTextStyles.cTextStyleSubTitle,
                Icon(Icons.email_outlined),
                AppColor.grey),
            const SizedBox(
              height: 80,
            ),
            const Profileitem("favorites", AppTextStyles.cTextStyleBoldlTitle,
                Icon(Icons.favorite_border), AppColor.second),
            const Profileitem("payments", AppTextStyles.cTextStyleBoldlTitle,
                Icon(Icons.payments), AppColor.second),
            const Profileitem(
                "Tell your friend",
                AppTextStyles.cTextStyleBoldlTitle,
                Icon(Icons.people_alt_outlined),
                AppColor.second),
            const Profileitem("promotions", AppTextStyles.cTextStyleBoldlTitle,
                Icon(Icons.bookmark_add_outlined), AppColor.second),
            const Profileitem("settings", AppTextStyles.cTextStyleBoldlTitle,
                Icon(Icons.settings), AppColor.second),
            Divider(),
            const Profileitem(
                "log out",
                TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
                Icon(Icons.logout),
                Colors.red),
          ],
        )),
      ),
    );
  }
}
