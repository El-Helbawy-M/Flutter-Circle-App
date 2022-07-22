import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_circle/layout/screens/authScreen/cuibit/cuibit.dart';
import 'package:flutter_app_circle/layout/screens/authScreen/cuibit/states.dart';
import 'package:flutter_app_circle/layout/tools/app_localizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/cash_Helper.dart';
import '../../widgets/defalut_button.dart';
import '../../widgets/default_form_field.dart';
import '../tasks_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    // var formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is LoginErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This user is not allowed')));

          }
          if (state is LoginSuccessState) {
            if(state.uId!=state.uId) {
              CachHelper.saveData(key: 'lgnCode', value: state.uId).then((value) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const TasksScreen(),
                ),
                    (route) {
                  return false;
                },
              );
            });
            }
            if(state.uId==state.uId){
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const TasksScreen(),
                ),
                    (route) {
                  return false;
                },
              );
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: ListView(
                  children: [
                    Text(getLang(context, "flutter_circle_elcome"),
                        style: const TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold)),
                    SizedBox(height: height * 0.01),
                    Text(getLang(context, "flutter_circle_slogn"),
                        style:
                        const TextStyle(fontSize: 30, color: Colors.grey)),


                    SizedBox(height: height * 0.15),
                    Column(
                      children: [
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
                            isPassword: LoginCubit
                                .get(context)
                                .isShowPass,
                            suffix: LoginCubit
                                .get(context)
                                .suffix,
                            suffixPressed: () {
                              LoginCubit.get(context)
                                  .changePassVisibility();
                            }),
                        SizedBox(height: height * 0.05),

                        BuildCondition(
                          condition: state is! LoginLoadingState,
                          builder: (context) =>
                              DefaultButton(
                                  function: () {
                                    LoginCubit.get(context).userLogin(
                                          email: emailController.text,
                                          password: passwordController.text);

                                  },
                                  text: getLang(context, "sign_up")),
                          fallback: (context) =>
                          const Center(child: CircularProgressIndicator()),
                        ),
                      ],
                    ),



                    SizedBox(height: height * 0.05),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
