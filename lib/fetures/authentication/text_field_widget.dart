import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/main_constants.dart';

class TextFieldWidget extends StatelessWidget {
  String? errorLabel;
  String? title;
  double? fontSizeForTitle;
  Function(String)? onChange;
  Color? titleColor;
  double? height;
  double? width;
  String? initValue;
  TextInputType? type;

  TextFieldWidget(
      {this.initValue,
        required this.title,
        this.errorLabel,
        required this.fontSizeForTitle,
        required this.onChange,
        this.titleColor = primaryColor,
        this.type,
        this.height,
        this.width,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title.toString(),
          style: TextStyle(color: titleColor, fontSize: fontSizeForTitle),
        ),
        SizedBox(height: 15.h),
        Stack(
          children: <Widget>[
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
            ),
            SizedBox(
              height: height,
              width: width,
              child: Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: TextFormField(
                  initialValue: initValue,
                  keyboardType: type,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: const Color(0xff9d9d9d).withOpacity(0.5)),
                    errorText: errorLabel == '' ? null : errorLabel,
                    border: InputBorder.none,
                  ),
                  onChanged: onChange,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
