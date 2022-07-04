import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/main_constants.dart';

class ProfileButton extends StatelessWidget {
  ProfileButton({required this.height, required this.width, required this.text, required this.onPress, Key? key})
      : super(key: key);

  String text;
  void Function()? onPress;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: secondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text,
          style: getTextStyle(
            context: context,
            fontSize: 16.sp,
            color: white,
          ),
        ),
      ),
    );
  }
}
