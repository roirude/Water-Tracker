import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:water_tracker/views/onboarding.dart';

class Loading extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Loading();
  }
}

class _Loading extends State<Loading> {
  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoarding()),
    );

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.water_drop, size: 150, color:  Colors.white),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(Icons.water_drop, size: 50, color: Colors.white,)
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Drops Water Tracker',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Track your daily water intake and stay hydrated.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20,),
              LoadingAnimationWidget.inkDrop(
                  color: Colors.white,
                  size: 30,
              ), // LoadingAnimationWidget
            ],
          ),
        ),
      ),
    );
  }
}