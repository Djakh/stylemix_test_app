import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylemix_test_app/blocs/user/user_bloc.dart';
import 'package:stylemix_test_app/cells/activity_indicator.dart';
import 'package:stylemix_test_app/constants.dart';
import 'package:stylemix_test_app/screens/auth/login.dart';
import 'package:stylemix_test_app/screens/home.dart';
import 'package:stylemix_test_app/theme/style.dart';

class SwitcherController extends StatefulWidget {
  const SwitcherController({super.key});

  @override
  State<SwitcherController> createState() => _SwitcherControllerState();
}

class _SwitcherControllerState extends State<SwitcherController> {
  @override
  void initState() {
    CustomStaticShowToast.initFToast(context);
    context.read<UserBloc>().add(GetUserEvent());
    super.initState();
  }

  /// --- Listeners ----

  void userListener(context, state) {
    print("my state is $state");
    if (state is UserFailedState) {
      CustomStaticShowToast.showToast(state.exception.toString(), isError: true);
    }
  }

  /// --- Widgets ---
  Widget get userStateChecker => BlocConsumer<UserBloc, UserState>(
      listener: userListener,
      builder: (context, state) {
        if (state is UserCompliedState && state.user == null) return const LoginController();
        if (state is UserFailedState) return const LoginController();
        if (state is UserCompliedState && state.user != null) return const HomeController();
        return ActivityIndicator(color: Style.colors.white);
      });

  @override
  Widget build(BuildContext context) => userStateChecker;
}
