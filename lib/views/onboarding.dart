import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:water_tracker/views/user_config.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OnBoarding();
  }
}

class _OnBoarding extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Get Started',
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.lightBlueAccent,
        ),
        onFinish: () {
          Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => UserConfig()),
          );
        },
        skipTextButton: Text(
            'Skip',
            style: TextStyle(
              fontSize: 16,
            ),
        ),
        background: [
          Image.asset(
            'images/slider_1.png',
            height: 300,
            width: 300,
          ),
          Image.asset(
            'images/slider_2.png',
            height: 300,
            width: 300,
          ),
          Image.asset(
            'images/slider_3.png',
            height: 300,
            width: 300,
          ),
        ],
        centerBackground: true,
        totalPage: 3,
        speed: 1.8,
          pageBodies: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                  ),
                  Text(
                    'Track your daily water intake with Us.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Achieve your hydration goals with a simple tap!',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                  ),
                  Text(
                    'Smart Reminders Tailored to you',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Quick and easy to set your hydration goal & then track your daily water intake progress.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                  ),
                  Text(
                    'Easy to Use - Drink, Tap, Repeat',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Staying hydrated every day is easy with Drops Water Tracker.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
      ),
    );
  }
}
