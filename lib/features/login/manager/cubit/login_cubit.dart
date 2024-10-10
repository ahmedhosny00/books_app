
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {

  LoginCubit() : super(LoginInitial());
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscureText = true;
IconData  passwordIcon = Icons.visibility;
  void togglePasswordVisibility() {
    isObscureText = !isObscureText;
    passwordIcon = isObscureText ? Icons.visibility : Icons.visibility_off;
    emit(TogglePasswordVisibility());
  }

}
