import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
// import 'package:marketi/Freatures/onboarding/OnBoardingPage.dart';
// import 'package:marketi/Freatures/onboarding/OnBoardingPagewithoutpackage.dart';
import 'package:marketi/Freatures/onboarding/create_custom_view_model.dart';
// import 'package:onboarding/onboarding.dart';


class OnBoardingView extends StatelessWidget {
  List<PageViewModel> pages = [
    createCustomViewModel(
      imagePath: 'assets/images/onboarding1.png',
      title: 'Welcome to Marketi',
      description:
          'Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.',
    ),
    createCustomViewModel(
      imagePath: 'assets/images/onboarding3.png',
      title: 'Fast and Secure Shopping',
      description:
          'Experience the convenience of online shopping with our fast and secure platform. Enjoy a seamless checkout process and have your favorite products delivered right to your doorstep.',
    ),

    ];

  OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
            pages: pages,
            showNextButton: false,
            done: const Text("Done"),
            onDone: () {
              // On button pressed
            },
          )
    );
  }
}

