import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

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
      appBar: AppBar(
        title: const Text(
          'For Today',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: const Column(
          children: [
            Row(
              children: [
                Card(
                  child: Column(
                    children: [
                      Text(
                        'Water',
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(

                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}