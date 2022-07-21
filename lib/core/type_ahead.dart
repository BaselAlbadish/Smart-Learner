import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../fetures/authentication/profile_subject_card.dart';

class TypeAhead extends StatelessWidget {
  String hintText;
  List<ProfileSubjectCard> items;
  TextEditingController text;
  Function(Object) onChange;
  String? errorText;
  double? height;
  double? width;
  String title;
  Color titleColor;
  double fontSizeForTitle;

  TypeAhead(
      {required this.onChange,
        required this.title,
        required this.fontSizeForTitle,
        required this.titleColor,
        required this.errorText,
        required this.hintText,
        required this.items,
        required this.text,
        this.width,
        this.height,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toString(),
          style: TextStyle(color: titleColor, fontSize: fontSizeForTitle),
        ),
        SizedBox(height: 10.h),
        Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Color(0xFFEAECEF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 2),
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
            ),
            SizedBox(
              height: 60.h,
              width: (width! - 25.w),
              child: Padding(
                padding: EdgeInsets.only(left: 25.w,top: 20.h),
                child: TypeAheadField<ProfileSubjectCard>(
                  textFieldConfiguration: TextFieldConfiguration(
                      controller: text,
                      // onSubmitted: (value) {
                      //   text.text = value;
                      //   onChange(text.text);
                      // },
                      style: TextStyle(color: titleColor, fontSize: 20.sp),
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                        hintText: hintText,
                        errorText: errorText,
                        hintStyle: TextStyle(
                            color: const Color(0xff9d9d9d), fontSize: 16.sp),
                        border: InputBorder.none,
                      )),
                  suggestionsCallback: (pattern) {
                    if (pattern.isNotEmpty) {
                      List<ProfileSubjectCard> suggestions = [];
                      for (int i = 0; i < items.length; i++) {
                        if(pattern.toString().toLowerCase() == items[i].subjectName.toLowerCase().substring(0,pattern.length)){
                          suggestions.add(items[i]);
                        }
                      }
                      return suggestions;
                    } else {
                      return items;
                    }
                  },
                  itemBuilder: (context, ProfileSubjectCard? suggestion) {
                    return ListTile(
                      title: suggestion,
                    );
                  },
                  hideSuggestionsOnKeyboardHide: false,
                  hideOnEmpty: true,
                  onSuggestionSelected: (suggestion) {
                    // text.text = suggestion.subjectName.toString();
                    // onChange(text.text);
                  },
                  suggestionsBoxDecoration: const SuggestionsBoxDecoration(elevation: 0.0),
                  transitionBuilder: (context, suggestionsBox, controller) {
                    return suggestionsBox;
                  },
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
