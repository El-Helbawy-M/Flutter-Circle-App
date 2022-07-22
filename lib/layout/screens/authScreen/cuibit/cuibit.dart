
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_circle/layout/screens/authScreen/cuibit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin ({
    required String email,
    required String password,

  }){
    emit(LoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) {
      emit(LoginSuccessState(value.user!.uid));
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>TasksScreen()));

    }).catchError((error){
      print(error.toString());
      emit(LoginErrorState(error.toString()));
    });
  }





  bool isShowPass = true;

  IconData suffix = Icons.visibility_outlined;

  void changePassVisibility() {
    isShowPass = !isShowPass;
    suffix =
        isShowPass ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    emit(ChangePassIconState());
  }


}
