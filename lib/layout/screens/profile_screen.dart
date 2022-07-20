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
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/img/3mna.jpg'),
                  radius: 45,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Ebrahim Shaaban",
                        style: AppTextStyles.cTextStyleTitle),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Flutter", style: AppTextStyles.cTextStyleSubTitle),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Profileitem("+21014582492", AppTextStyles.cTextStyleSubTitle,
                const Icon(Icons.phone), AppColor.grey, () {}),
            Profileitem(
                "ebrahimsh2019@gmail.com",
                AppTextStyles.cTextStyleSubTitle,
                const Icon(Icons.email_outlined),
                AppColor.grey,
                () {}),
            const Divider(thickness: 2, height: 50),
            Profileitem("favorites", AppTextStyles.cTextStyleBoldlTitle,
                const Icon(Icons.favorite_border), AppColor.second, () {}),
            Profileitem("payments", AppTextStyles.cTextStyleBoldlTitle,
                const Icon(Icons.payments), AppColor.second, () {}),
            Profileitem("Tell your friend", AppTextStyles.cTextStyleBoldlTitle,
                const Icon(Icons.people_alt_outlined), AppColor.second, () {}),
            Profileitem("promotions", AppTextStyles.cTextStyleBoldlTitle,
                const Icon(Icons.bookmark_add_outlined), AppColor.second, () {}),
            Profileitem("settings", AppTextStyles.cTextStyleBoldlTitle,
                const Icon(Icons.settings), AppColor.second, () {}),
            const Divider(height: 30),
            Profileitem(
                "log out",
                const TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
                const Icon(Icons.logout),
                Colors.red,
                () {}),
          ],
        ),
      ),
    );
  }
}
