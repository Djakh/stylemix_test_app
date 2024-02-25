import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylemix_test_app/blocs/user/user_bloc.dart';
import 'package:stylemix_test_app/constants.dart';
import 'package:stylemix_test_app/routes/routes.dart';
import 'package:stylemix_test_app/screens/switcher.dart';
import 'package:stylemix_test_app/size_config.dart';
import 'package:stylemix_test_app/theme/theme.dart';

class StylemixTestApp extends StatefulWidget {
  const StylemixTestApp({Key? key}) : super(key: key);

  @override
  State<StylemixTestApp> createState() => _StylemixTestAppState();
}

class _StylemixTestAppState extends State<StylemixTestApp> {
  final router = FluroRouter();

  @override
  void initState() {
    super.initState();
    AppRoutes.defineRoutes(router);
    Application.router = router;
  }

  Widget get materialApp => MaterialApp(
      builder: (context, child) =>
          MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: child!),
      theme: theme,
      navigatorObservers: [routeObserver],
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router?.generator,
      home: const SwitcherController());
  @override
  Widget build(BuildContext context) => LayoutBuilder(builder: (context, constraints) {
        SizeConfig().init(constraints);
        return MultiBlocProvider(providers: [
          BlocProvider(create: (_) => UserBloc()),
        ], child: materialApp);
      });
}
