import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'fetures/authentication/build_profile.dart';
import 'package:smart_learner/fetures/articles/articles_directory.dart';
import 'package:smart_learner/fetures/articles/articles_screen.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      //systemNavigationBarDividerColor: Colors.white,
      //systemNavigationBarIconBrightness: Brightness.dark,
      //systemNavigationBarColor: Colors.white,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Smart Learner',
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const ArticlesScreen(),
        );
      },
    );
  }
}