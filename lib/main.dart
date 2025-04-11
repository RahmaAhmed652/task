import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/config_size.dart';

import 'package:task1/homw_page/home_page_mobile.dart';
import 'package:task1/homw_page/home_page_web.dart';
import 'package:task1/responsive.dart';

void main() => runApp (MyApp());
class MyApp extends StatelessWidget{
  Widget build (BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(760, 1024),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Responsive',
            home: ConfigSize(
              mobile:  HomePageMobile(), web: HomePageWeb(),),

          );
        }
    );
  }


}





