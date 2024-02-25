import 'package:flutter/material.dart';
import 'package:stylemix_test_app/models/user.dart';
import 'package:stylemix_test_app/screens/dashboard/dashboard.dart';
import 'package:stylemix_test_app/screens/profile/profile.dart';
import 'package:stylemix_test_app/theme/style.dart';

class HomeController extends StatefulWidget {
  const HomeController({Key? key}) : super(key: key);

  @override
  _HomeControllerState createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  int pageIndex = 0;

  /// --- Life-cycle ---

  @override
  void initState() {
    super.initState();
  }

  /// --- Methods ---
  void onTapNavigator(i) {
    pageIndex = i;
    setState(() {});
  }

  /// --- Widgets ---

  Widget get buildItem {
    switch (pageIndex) {
      case 0:
        return const Dashboard();
      case 1:
        return ProfileController(user: User(username: "Shohjahon", age: 20, country: 'Uzbekistan, Tashkent'));

      default:
        return Container(
          color: Style.colors.white,
        );
    }
  }

  List<BottomNavigationBarItem> get tabItems => const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ];

  Widget get tabScaffold => Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 24.0,
          items: tabItems,
          type: BottomNavigationBarType.fixed,
          currentIndex: pageIndex,
          onTap: onTapNavigator,
          selectedItemColor: Style.colors.primary,
          unselectedItemColor: Style.colors.blue4,
          backgroundColor: Style.colors.white),
      body: buildItem);

  @override
  Widget build(BuildContext context) => tabScaffold;
}
