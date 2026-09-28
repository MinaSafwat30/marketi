import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPage extends StatelessWidget {
  final String imagePath;
  final String mainText ;
  final String subText ;
  final String buttonText ;

  const OnBoardingPage({
    super.key,
    required this.imagePath,
    required this.mainText,
    required this.subText,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(children: [
        SizedBox(height: 120.h,),
        Image.asset(imagePath,
        width: double.infinity,
        height: 275.h,),
        SizedBox(height: 40.h,),
        Text(mainText,style: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xff1A1A1A)),),
        SizedBox(height: 25.h,),
        SizedBox(
          width: 350.w,
          height: 100.h,
          child: Text(subText,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff1A1A1A)
            ),
          textAlign: TextAlign.center,),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          width: 344.w,
          height: 48.h,
          child: ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Set the background color of the button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              buttonText,
              style: TextStyle
              (fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
        )
      ],),
    );
  }
}