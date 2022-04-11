import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'infrasturcture/router.dart';
import 'injection.dart';
import 'presentation/themes/theme.dart';

void main() {
  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(500, 1000),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        debugShowCheckedModeBanner: false,
        title: 'Test Ordo',
        theme: theme(),
      ),
    );
  }
}
