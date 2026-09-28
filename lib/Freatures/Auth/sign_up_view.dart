import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/Colors.dart';
import 'package:marketi/Freatures/Auth/log_in_view.dart';
import 'package:marketi/Freatures/Auth/widgets/customTextFormField.dart';
import 'package:marketi/Freatures/Auth/widgets/custombackbutton.dart';
import 'package:marketi/Freatures/Widgets/CustomButton.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackButton(
                    OnPressed:(){ Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => LogInView()),
                            );
                    }
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 42),
                    child: SizedBox(
                      height: 160.h,
                      child: Image.asset(
                        'assets/icon/icon.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
          
              Text(
                'Your Name',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.Dark_Blue900,
                ),
              ),
              CustomTextFormField(
                labelText: 'Full Name',
                icon: Icons.person_pin_outlined,
              ),
              
              Text(
                'Username',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.Dark_Blue900,
                ),
              ),
              CustomTextFormField(
                labelText: 'Username',
                icon: Icons.person_3_outlined,
              ),
              
              Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.Dark_Blue900,
                ),
              ),
              CustomTextFormField(
                labelText: '+20 1501142409',
                icon: Icons.phone_android_outlined,
              ),
              
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.Dark_Blue900,
                ),
              ),
              CustomTextFormField(
                labelText: 'You@gmail.com',
                icon: Icons.email_outlined,
              ),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.Dark_Blue900,
                ),
              ),
              CustomTextFormField(
                labelText: 'Password',
                icon: Icons.lock_outlined,
                isPassword: true,
              ),
              Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.Dark_Blue900,
                ),
              ),
              CustomTextFormField(
                labelText: 'Confirm Password',
                icon: Icons.lock_outlined,
                isPassword: true,
              ),
              
                SizedBox(
                  height: 10.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(
                      buttonText: 'Sign Up',
                      onPressed: () {
                        
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
                      height: 5.h,
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
                  ],
                ),
                
            ],
          ),
        ),
      ),
    );
  }
}