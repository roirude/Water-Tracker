import 'package:flutter/material.dart';
import 'package:water_tracker/views/home.dart';

class UserConfig extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _UserConfig();
  }
}

class _UserConfig extends State<UserConfig> {
  String selectedGender = 'female';
  double _currentOldSliderValue = 25;
  double _currentWeightSliderValue = 25;
  double _currentHeightSliderValue = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                    'Select your age, weight, gender and height',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What is your gender',
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedGender = 'male';
                          });
                        }, //onTap
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'images/man.png',
                              width: 100,
                              height: 100,
                            ),
                            if (selectedGender == 'male')
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 32,
                                ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedGender = 'female';
                          });
                        }, //onTap
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'images/woman.png',
                              width: 100,
                              height: 100,
                            ),
                            if (selectedGender == 'female')
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 32,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'How old are you',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Stack(
                    children: [
                      Slider(
                        value: _currentOldSliderValue,
                        min: 1,
                        max: 100,
                        divisions: 100,
                        activeColor: Colors.blue,
                        label: _currentOldSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentOldSliderValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What is your weight (in kg)',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Stack(
                    children: [
                      Slider(
                        value: _currentWeightSliderValue,
                        min: 0,
                        max: 200,
                        divisions: 200,
                        activeColor: Colors.blue,
                        label: _currentWeightSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentWeightSliderValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What is your height (in cm)',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Stack(
                    children: [
                      Slider(
                        value: _currentHeightSliderValue,
                        min: 0,
                        max: 200,
                        divisions: 200,
                        activeColor: Colors.blue,
                        label: _currentHeightSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentHeightSliderValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            FloatingActionButton.extended(
              onPressed:(){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Home())
                );
              },
              backgroundColor: Colors.blue,
              label: Row(
                children: [
                  Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Icon(Icons.navigate_next, color: Colors.white,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}