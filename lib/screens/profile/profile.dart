import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:stylemix_test_app/blocs/user/user_bloc.dart';
import 'package:stylemix_test_app/cells/activity_indicator.dart';
import 'package:stylemix_test_app/models/user.dart';
import 'package:stylemix_test_app/theme/style.dart';

class ProfileController extends StatefulWidget {
  final User user;
  const ProfileController({Key? key, required this.user}) : super(key: key);

  @override
  State<ProfileController> createState() => _ProfileControllerState();
}

class _ProfileControllerState extends State<ProfileController> {
  late User user;

  /// --- Life-cycle ---

  @override
  void initState() {
    super.initState();
    user = widget.user;
  }

  /// --- Methods ---

  void signOut(BuildContext context) async {
    context.read<UserBloc>().add(LogOutUserEvent());
  }

  /// --- Widgets ---
  Widget get avatarBody => Icon(Feather.user, color: Style.colors.darkGrey, size: 48.0);

  Widget get avatar => Hero(
      tag: 'avatar',
      child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(borderRadius: Style.border20, color: Style.colors.disabled),
          child: avatarBody));

  Widget get header => Stack(children: [
        Positioned(
            top: 50.0,
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(decoration: BoxDecoration(color: Style.colors.white, borderRadius: Style.border32))),
        Center(child: avatar)
      ]);

  Widget fullName(String text) => Center(child: Text(text, style: Style.body3w5));

  Widget aboutMe(String text) => Center(
      child: Padding(
          padding: Style.padding16,
          child:
              Text(text, style: Style.smallTextw4.copyWith(color: Style.colors.primary), textAlign: TextAlign.center)));

  Widget tile(IconData leading, String title, {bool showTrailing = true, Function()? onTap}) => ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      dense: true,
      leading: Icon(leading, color: Style.colors.black, size: 20.0),
      title: Text(title, style: Style.bodyw6),
      trailing: showTrailing ? Icon(Feather.chevron_right, color: Style.colors.black, size: 20.0) : null,
      onTap: onTap);

  Widget tiles(BuildContext context) => Material(
      color: Style.colors.transparent,
      child: ListView(physics: const ClampingScrollPhysics(), children: [
        tile(Feather.info, "Information", onTap: () {}),
        const Divider(),
        tile(Feather.file_text, 'Documents', onTap: () {}),
        const Divider(),
        tile(Feather.globe, 'Language', onTap: () {}),
        const Divider(),
        tile(Feather.phone_call, "Support"),
        const Divider(),
        tile(Feather.log_out, 'Logout', showTrailing: false, onTap: () => signOut(context)),
        const Divider()
      ]));

  Widget get card => BlocBuilder<UserBloc, UserState>(
      builder: (context, state) => state is UserCompliedState
          ? Container(
              color: Style.colors.white,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                fullName(state.user?.username ?? ""),
                aboutMe("${state.user?.age.toString()} age"),
                Text(state.user?.country ?? "",
                    style: Style.smallTextw4.copyWith(color: Style.colors.primary), textAlign: TextAlign.center),
                const Divider(),
                Expanded(child: tiles(context))
              ]))
          : const ActivityIndicator());

  Widget get view => Column(children: [const SizedBox(height: 32.0), header, Expanded(child: card)]);

  @override
  Widget build(BuildContext context) => Container(color: Style.colors.white, child: SafeArea(child: view));
}
