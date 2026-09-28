import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/Colors.dart';
import 'package:marketi/Freatures/Auth/sign_up_view.dart';
import 'package:marketi/Freatures/Auth/widgets/skipbutton.dart';
import 'package:marketi/Freatures/Auth/widgets/customTextFormField.dart';
import 'package:marketi/Freatures/Widgets/CustomButton.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 58.h,
              ),
              SkipButton(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 22.h,
                  ),
                  SizedBox(
                    height: 232.h,
                    child: Image.asset(
                      'assets/icon/icon.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  CustomTextFormField(
                    labelText: 'Username or Email',
                    icon: Icons.email_outlined,
        
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  CustomTextFormField(
                    labelText: 'Password',
                    icon: Icons.lock_outlined,
                    isPassword: true,
                  ),
                  Row(
                      children: [
                        Transform.translate(
                          offset: Offset(3, 0),
                          child: Checkbox(
                            value: false,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                            onChanged: (value) {},
                          ),
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 14.sp, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomButton(
                      buttonText: 'Log In',
                      onPressed: () {
                        // Handle button press
                      },
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text('Or Continue With', 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500, 
                      color: Color(0xff51526C)
                      )
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(0),
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ), 
                          child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/icon/Google_Icon.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(0),
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ), 
                          child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/icon/Apple_Icon.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(0),
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ), 
                          child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/icon/Facebook_Icon.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Are you new in Marketi',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => SignUpView()),
                            );
                          },
                          child: Text(
                            'register?',
                            style: TextStyle(fontSize: 14.sp, color: ProjectColors.Light_Blue100),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}