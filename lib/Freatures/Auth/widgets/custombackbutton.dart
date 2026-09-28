import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/Colors.dart';

class CustomBackButton extends StatelessWidget {
  final void Function() OnPressed ;
  const CustomBackButton({super.key, required this.OnPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: OnPressed,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(0),
        backgroundColor: Colors.white,
        elevation: 0,
      ), 
      child: Container(
        width: 48.w,
        height: 48.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xffB2CCFF), width: 1),
        ),
        child: Image(
          width: 32.w,
          height: 32.h,
          image: AssetImage('assets/icon/back_icon.png'),
          color: ProjectColors.Dark_Blue900,
        ),
      ),
    );

  }
}