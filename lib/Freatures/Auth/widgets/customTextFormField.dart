import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final IconData icon;
  final bool isPassword;
  
  CustomTextFormField({
    super.key,
    required this.labelText,
    required this.icon,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? obscureText : false,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon, color: Color(0xff001640)),
        labelText: widget.labelText,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
                icon:
                    Icon(obscureText ? Icons.visibility_off : Icons.visibility),
              )
            : null,
        labelStyle: TextStyle(
          color: Color(0xff929BAB),
          fontSize: 14.sp,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color(0xffC9DBFF), width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color(0xffC9DBFF), width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color:Color(0xffC9DBFF), width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}