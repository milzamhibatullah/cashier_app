import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/utils/assets.manager.dart';

///halaman splash
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: 1.sw,
        height: 1.sh,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsManger.cashierImages,
              height: 200.h,
              width: 200.h,
            ),
            SizedBox(
              height: 40.h,
            ),
            Text('Lorem Ipsum Dolor Imit')
          ],
        ),
      ),
    );
  }
}
