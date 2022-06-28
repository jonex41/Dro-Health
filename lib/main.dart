import 'package:dex_app/Router/finder.dart';
import 'package:dex_app/Router/router.gr.dart';
import 'package:dex_app/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialize();
  await setup();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  final _rootRouter = getIt<RootRouter>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: appPrimaryColor,
        fontFamily: 'ProximaNova',
        dividerTheme: DividerThemeData(
          color: blackColor.withOpacity(0.1),
          //  height: 2,
        ),
      ),
      routerDelegate: _rootRouter.delegate(),
      routeInformationProvider: _rootRouter.routeInfoProvider(),
      routeInformationParser: _rootRouter.defaultRouteParser(),
    );
  }
}
