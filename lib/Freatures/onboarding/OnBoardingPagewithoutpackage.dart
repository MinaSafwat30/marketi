import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPageWithoutPackage extends StatelessWidget {
  final String imagePath;
  final String mainText ;
  final String subText ;
  final String buttonText ;

  const OnBoardingPageWithoutPackage({
    super.key,
    required this.imagePath,
    required this.mainText,
    required this.subText,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData mdq = MediaQuery.of(context);
    double height = mdq.size.height;
    double width = mdq.size.width;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(children: [
        SizedBox(height: height * 130/812,),
        Image.asset(imagePath,
          width: double.infinity,
          height: height * 285/812,
        ),
        SizedBox(height: height * 50/812,),
        Text(mainText,style: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xff1A1A1A)),),
        SizedBox(height: height * 25/812,),
        SizedBox(
          width: width * 350/393,
          height: height * 100/812,
          child: Text(subText,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff1A1A1A)
            ),
          textAlign: TextAlign.center,),
        ),
        SizedBox(height: height * 30/812,),
        Container(
          margin: EdgeInsets.only(top: 50),
          width: width * 344/393,
          height: height * 48/812,
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
              (fontSize: (height + width) * 16/(812 + 375), fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
        )
      ],),
    );
  }
}