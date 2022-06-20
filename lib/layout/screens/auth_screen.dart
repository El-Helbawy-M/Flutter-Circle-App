import 'package:flutter/material.dart';
import 'package:flutter_app_circle/layout/tools/app_localizer.dart';

import '../widgets/defalut_button.dart';
import '../widgets/default_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: ListView(
            children: [
              Text(getLang(context, "flutter_circle_elcome"), style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(height: height * 0.01),
              Text(getLang(context, "flutter_circle_slogn"), style: const TextStyle(fontSize: 20, color: Colors.grey)),
              SizedBox(height: height * 0.08),
              //this function in constant file
              DefaultFormField(
                controller: nameController,
                type: TextInputType.name,
                validate: (value) {
                  if (value.isEmpty) {
                    return 'Name Not To Be Empty';
                  }
                  return null;
                },
                label: getLang(context, 'name'),
                prefix: Icons.person,
              ),
              SizedBox(height: height * 0.05),
              DefaultFormField(
                controller: phoneController,
                type: TextInputType.phone,
                validate: (value) {
                  if (value.isEmpty) {
                    return 'Phone Not To Be Empty';
                  }
                  return null;
                },
                label: getLang(context, "phone"),
                prefix: Icons.phone,
              ),
              SizedBox(height: height * 0.05),
              DefaultFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                validate: (value) {
                  if (value.isEmpty) {
                    return 'Email Not To Be Empty';
                  }
                  return null;
                },
                label: getLang(context, "email"),
                prefix: Icons.email,
              ),
              SizedBox(height: height * 0.05),
              DefaultFormField(
                controller: passwordController,
                type: TextInputType.text,
                validate: (value) {
                  if (value.isEmpty) {
                    return 'Password Not To Be Empty';
                  }
                  return null;
                },
                label: getLang(context, "password"),
                prefix: Icons.person,
                isPassword: true,
                suffix: Icons.visibility,
                suffixPressed: () {},
              ),
              SizedBox(height: height * 0.15),

              //this function in constant file

              DefaultButton(function: () {}, text: getLang(context, "sign_up")),
              SizedBox(height: height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
