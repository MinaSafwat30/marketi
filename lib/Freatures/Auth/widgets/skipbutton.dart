import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkipButton extends StatelessWidget {
  final void Function() OnTap ;
  const SkipButton({super.key, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: OnTap,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: Color(0xffB2CCFF), width: 1),
                ),
                width: 60.w,
                height: 48.h,
                child: Center(
                  child: Text(
                    'Skip',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 18.sp,
                        
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      )),
                ),
              ),
            );
  }
}