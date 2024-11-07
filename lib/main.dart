import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/route.config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ///pasang screen util init
    return ScreenUtilInit(
      ///define default size
      ///usualy follow base default on figma
      designSize: const Size(360, 720),
      useInheritedMediaQuery: true,

      ///for following scale factor on user device
      minTextAdapt: true,
      child: MaterialApp.router(
        ///pasang cofig go router
        routerConfig: routeConfig,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
