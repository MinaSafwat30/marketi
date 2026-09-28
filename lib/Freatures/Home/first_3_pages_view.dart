import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/Colors.dart';
import 'package:marketi/Freatures/Auth/log_in_view.dart';

class First3PagesView extends StatelessWidget {
  final int idx ;
  late List<String> imagepath = ['assets/images/onboarding1.png','assets/images/onboarding2.png','assets/images/onboarding3.png'];
  late List<String> mainText = ['Welcome to Marketi' ,'Easy to Buy' , 'Wonderful User Experience' ];
  late List<String> subText = [
    'Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.',
    'Find the perfect item that suits your style and needs With secure payment options and fast delivery, shopping has never been easier.',
    'Start exploring now and experience the convenience of online shopping at its best.'
    ];
  late List<String> buttonText = ['Next','Next','Get Start'];
  
  First3PagesView({super.key, required this.idx});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
                SizedBox(height: 164.h,),
                Image.asset(
                  imagepath[idx],
                  width: double.infinity,
                  height: 275.h,
                    ),
                SizedBox(height: 54.h,),
                Text(mainText[idx],style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1A1A1A)
                    ),
                  ),
                SizedBox(height: 25.h,),
                SizedBox(
                  width: 350.w,
                  height: 100.h,
                  child: Text(subText[idx],
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1A1A1A)
                    ),
                  textAlign: TextAlign.center,),
                ),
                SizedBox(
                      height: 53.h,
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: idx != 0? ProjectColors.Light_Blue700 : ProjectColors.Dark_Blue900,
                      radius : idx == 0? 10.r: 8.r,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CircleAvatar(
                      backgroundColor: idx != 1? ProjectColors.Light_Blue700 : ProjectColors.Dark_Blue900,
                      radius : idx == 1? 10.r: 8.r,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CircleAvatar(
                      backgroundColor: idx != 2? ProjectColors.Light_Blue700 : ProjectColors.Dark_Blue900,
                      radius : idx == 2? 10.r: 8.r,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 14.w),
                  width: 344.w,
                  height: 48.h,
                  child: ElevatedButton(
                    onPressed: (){
                      if(idx == 2){
                        Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => LogInView()),
                            );
                      }
                      else {
                        Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => First3PagesView(idx: idx+1)),
                            );
                      } 
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Set the background color of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      buttonText[idx],
                      style: TextStyle
                      (fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ),
                )
          ],),
        ),
    );
  }
}