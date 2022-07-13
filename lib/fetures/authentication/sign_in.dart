import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/fetures/authentication/sign_up.dart';
import 'package:smart_learner/fetures/authentication/text_field_widget.dart';
import 'package:smart_learner/fetures/profile/profile.dart';
import '../../core/main_constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/white.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              const Spacer(),
              Center(
                child: Text(
                  "SMART LEARNER",
                  style: getTextStyle(
                    fontWeight: FontWeight.bold,
                    context: context,
                    fontSize: 50.sp,
                    color: primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Center(
                child: Text(
                  "Sign In",
                  style: getTextStyle(
                    fontWeight: FontWeight.normal,
                    context: context,
                    fontSize: 24.sp,
                    color: black,
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              Center(
                child: TextFieldWidget(
                  height: 60.h,
                  width: 550.w,
                  onChange: (value) {},
                  fontSizeForTitle: 14.sp,
                  titleColor: grey,
                  title: 'Name',
                ),
              ),
              SizedBox(height: 25.h),
              Center(
                child: TextFieldWidget(
                  height: 60.h,
                  width: 550.w,
                  onChange: (value) {},
                  fontSizeForTitle: 14.sp,
                  titleColor: grey,
                  title: 'Password',
                ),
              ),
              SizedBox(height: 25.h),
              Container(
                height: 60.h,
                width: 550.w,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Profile();
                        },
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 24.sp, color: white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUp();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Sign up",
                    style: getTextStyle(
                      fontWeight: FontWeight.bold,
                      context: context,
                      fontSize: 16.sp,
                      color: black,
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
