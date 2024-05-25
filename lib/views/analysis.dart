import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../components/chardata.dart';

class Analysis extends StatefulWidget {
  const Analysis({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Analysis();
  }
}

class _Analysis extends State<Analysis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Water',
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    BarChartSample7(),
                  ],
                ),
              ),
              color: Colors.white,
            ),
            SizedBox(height: 20,),
            Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Calorie',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              '520.31',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Kcal',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.blue,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Heart',
                              style: TextStyle(
                                  fontSize: 22,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              '105',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              'bpm',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.grey[50],
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Water',
                              style: TextStyle(
                                  fontSize: 22,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              '2.1',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              'liters',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.grey[50],
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sleep',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              '08:00',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'hours',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.blue,
                    ),
                  ],
                )
            )
          ],
        )
      ),
    );
  }
}