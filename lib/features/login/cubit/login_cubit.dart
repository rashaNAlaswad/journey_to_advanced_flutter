import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/model/login_request_body.dart';
import '../data/repository/login_repository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepository) : super(const LoginState.initial());

  final LoginRepository loginRepository;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loginLoading());
    final response = await loginRepository.login(
      LoginRequestBody(
          email: emailController.text, password: passwordController.text),
    );
    response.when(
      success: (loginResponse) {
        emit(LoginState.loginSuccess(loginResponse));
      },
      failure: (apiErrorModel) {
        emit(LoginState.loginError(apiErrorModel));
      },
    );
  }
}
