import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/welcome_screen/welcome_screen_widget.dart';
import '../../fetures/authentication/sign_in.dart';
import '../main_constants.dart';

class WelcomingScreen extends StatefulWidget {
  const WelcomingScreen({Key? key}) : super(key: key);

  @override
  _WelcomingScreenState createState() => _WelcomingScreenState();
}

class _WelcomingScreenState extends State<WelcomingScreen> {
  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WelcomeScreen(
      colors: const [Color(0xFF012236), Colors.lightBlue, Colors.lightBlue, Color(0xFF012236)],
      text2: 'SMART LEARNER',
      textStyle2: TextStyle(
        fontSize: 120.sp,
        color: const Color(0xFF11476C),
      ),
      textType2: TextType.colorizeAnimationText,
      speed: 100,
      pageRouteTransition: PageRouteTransition.slideTransition,
      navigateRoute: Builder(builder: (context) {
        return const SignIn();
      }),
      duration: 6000,
      textStyle: getTextStyle(
        fontWeight: FontWeight.bold,
        context: context,
        fontSize: 75.sp,
        color: primaryColor,
      ),
      backgroundColor: white,
    );
  }
}
