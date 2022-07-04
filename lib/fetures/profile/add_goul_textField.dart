import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddGoalFieldWidget extends StatelessWidget {
  Function(String)? onChange;
  double? height;
  double? width;
  String? hintText;

  AddGoalFieldWidget({required this.onChange, this.hintText, this.height, this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Stack(
        children: <Widget>[
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
          ),
          SizedBox(
            height: height,
            width: width,
            child: Padding(
              padding: EdgeInsets.only(left: 25.w, bottom:( height! / 2.5)),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: hintText,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: const Color(0xff9d9d9d), fontSize: 16.h),
                  border: InputBorder.none,
                ),
                onChanged: onChange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
