import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylemix_test_app/blocs/user/user_bloc.dart';
import 'package:stylemix_test_app/cells/button.dart';
import 'package:stylemix_test_app/cells/text_field.dart';
import 'package:stylemix_test_app/constants.dart';
import 'package:stylemix_test_app/theme/style.dart';

class LoginController extends StatefulWidget {
  const LoginController({super.key});

  @override
  State<LoginController> createState() => _LoginControllerState();
}

class _LoginControllerState extends State<LoginController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  /// --- Listeners ----

  void userListener(context, state) {
    if (state is UserFailedState) {
      CustomStaticShowToast.showToast(state.exception.toString(), isError: true);
    }
  }

  /// --- Methods ---

  void login() =>
      context.read<UserBloc>().add(LoginEvent(login: _loginController.text, password: _passwordController.text));

  void checkLoginValidation() {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      login();
    }
  }

  String? loginValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your login';
    }
    return null;
  }

  String? passwordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    // Password must contain at least one number, one letter, and one symbol
    if (!RegExp(r'^(?=.*?[a-zA-Z])(?=.*?[0-9])').hasMatch(value)) {
      return 'Password must contain at least one number';
    }
    return null;
  }

  /// --- Widgets ---
  Widget get loginTextFiled =>
      TextInputField.primary(controller: _loginController, validator: loginValidator, title: "Login");

  Widget get passwordTextFiled =>
      TextInputField.obscure(controller: _passwordController, validator: passwordValidator, title: "Password");

  Widget get loginButton => BlocConsumer<UserBloc, UserState>(
      listener: userListener,
      builder: (context, state) => Button.primary(
          onPressed: checkLoginValidation,
          spinner: state is UserLoadingState,
          text: "Login",
          color: Style.colors.green,
          textColor: Style.colors.primary));

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Enter your credentials", textAlign: TextAlign.center, style: Style.headline3w5),
                    const SizedBox(height: 20.0),
                    loginTextFiled,
                    const SizedBox(height: 20.0),
                    passwordTextFiled,
                    const SizedBox(height: 20.0),
                    loginButton
                  ]))));
}
