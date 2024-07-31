import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_soloud/flutter_soloud.dart';

import 'home. dart/home_page.dart';

final soloud = SoLoud.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  // ignore: await_only_futures
  
  await soloud.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(brightness: Brightness.dark),
            home: const HomePage(),
          );
        });
  }
}
