import 'package:flutter/material.dart';
import 'package:stylemix_test_app/screens/dashboard/dashboard.dart';
import 'package:stylemix_test_app/theme/style.dart';

class HomeController extends StatelessWidget {
  const HomeController({super.key});

  PreferredSizeWidget get appBar => AppBar(title: Text("Products", style: Style.bodyw6));

  @override
  Widget build(BuildContext context) => Scaffold(appBar: appBar, body: const ProductList());
}
