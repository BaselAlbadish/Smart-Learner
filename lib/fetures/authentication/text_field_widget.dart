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
  IconData? suffix;
  VoidCallback? suffixFunction;
  TextInputType? type;
  bool obscureText;
  IconData? iconData;

  TextFieldWidget(
      {this.initValue,
      this.iconData,
      required this.title,
      this.errorLabel,
      this.suffix,
      this.suffixFunction,
      required this.obscureText,
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
                border: Border.all(color: Colors.black26),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
            ),
            SizedBox(
              height: height,
              width: width,
              child: TextFormField(
                obscureText: obscureText,
                initialValue: initValue,
                keyboardType: type,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: const Color(0xff9d9d9d).withOpacity(0.5)),
                  errorText: errorLabel == '' ? null : errorLabel,
                  suffixIcon: suffix != null
                      ? IconButton(
                          onPressed: suffixFunction,
                          icon: Icon(suffix,color: primaryColor,),
                        )
                      : null,
                  prefixIcon: iconData != null
                      ? Icon(
                          iconData,
                          // size: 3.0,
                          color: primaryColor,
                        )
                      : null,
                  border: InputBorder.none,
                ),
                onChanged: onChange,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
