import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stylemix_test_app/app.dart';
import 'package:stylemix_test_app/models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive
    ..init(appDocumentDirectory.path)
    ..registerAdapter(UserAdapter());

  // Registering the UserAdapter

  await Hive.openBox('userBox');
  runApp(const StylemixTestApp());
}
