import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/Colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.buttonText,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
          // margin: EdgeInsets.only(top: 50),
          width: 344.w,
          height: 48.h,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: ProjectColors.Light_Blue100, // Set the background color of the button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: Text(
              buttonText,
              style: TextStyle
              (fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
        );
  }
}