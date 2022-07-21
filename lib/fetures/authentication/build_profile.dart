import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:file_picker/file_picker.dart';
import 'package:smart_learner/fetures/authentication/profile_subject_card.dart';
import '../../core/main_constants.dart';
import '../../core/type_ahead.dart';
import '../Home/subject_card.dart';
import '../ILS_Quiz/ils_Store.dart';

class BuildProfile extends StatefulWidget {
  const BuildProfile({Key? key}) : super(key: key);

  @override
  State<BuildProfile> createState() => _BuildProfileState();
}

class _BuildProfileState extends State<BuildProfile> {
  FilePickerResult? result;

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
                  "Build profile",
                  style: getTextStyle(
                    fontWeight: FontWeight.bold,
                    context: context,
                    fontSize: 50.sp,
                    color: primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: primaryColor,
                    width: 1.5.w,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(80)),
                ),
                child: InkWell(
                  child: result != null
                      ? CircleAvatar(
                          radius: 75.w,
                          backgroundImage: FileImage(
                            File(result!.files.single.path!),
                          ),
                        )
                      : CircleAvatar(
                          backgroundImage: const AssetImage("assets/images/default_image.png"),
                          radius: 75.w,
                        ),
                  onTap: () {
                    // var res;
                    // try{
                    //   res = await FilePicker.platform.pickFiles(
                    //     type: FileType.custom,
                    //     allowedExtensions: ['jpg', 'png'],
                    //   );
                    // }on PlatformException catch (e){
                    //   print(e.message);
                    // }
                    //
                    // setState((){
                    //   result = res;
                    // });
                  },
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "Add profile picture",
                style: getTextStyle(
                  fontWeight: FontWeight.bold,
                  context: context,
                  fontSize: 18.sp,
                  color: black,
                ),
              ),
              SizedBox(height: 100.h),
              TypeAhead(
                title: 'Previous knowledge',
                titleColor: Colors.black,
                fontSizeForTitle: 18.sp,
                text: TextEditingController(),
                items: [
                  ProfileSubjectCard(subjectName: "Java"),
                  ProfileSubjectCard(subjectName: "Algorithm"),
                  ProfileSubjectCard(subjectName: "AI"),
                  ProfileSubjectCard(subjectName: "python")
                ],
                errorText: '',
                hintText: 'Subjects',
                width: 360.w,
                height: 50.h,
                onChange: (val) {},
              ),
              SizedBox(height: 30.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bio",
                    style: getTextStyle(
                      fontWeight: FontWeight.normal,
                      context: context,
                      fontSize: 18.sp,
                      color: black,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 360.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left:15.h),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        style: TextStyle(color: black, fontSize: 20.sp),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: const Color(0xff9d9d9d).withOpacity(0.5)),
                          border: InputBorder.none,
                        ),
                        onChanged: (v){
                          //TODO
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              TypeAhead(
                title: 'Choose topic to generate study plan',
                titleColor: Colors.black,
                fontSizeForTitle: 18.sp,
                text: TextEditingController(),
                items: [
                  ProfileSubjectCard(subjectName: "Java"),
                  ProfileSubjectCard(subjectName: "Algorithm"),
                  ProfileSubjectCard(subjectName: "AI"),
                  ProfileSubjectCard(subjectName: "python")
                ],
                errorText: '',
                hintText: 'topics',
                width: 360.w,
                height: 50.h,
                onChange: (val) {},
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
