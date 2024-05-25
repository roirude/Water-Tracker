import 'package:flutter/material.dart';
import 'package:water_tracker/views/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Tracker',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'Poppins'),
          bodyText2: TextStyle(fontFamily: 'Poppins'),
          headline1: TextStyle(fontFamily: 'Poppins'),
          headline2: TextStyle(fontFamily: 'Poppins'),
          headline3: TextStyle(fontFamily: 'Poppins'),
          headline4: TextStyle(fontFamily: 'Poppins'),
          headline5: TextStyle(fontFamily: 'Poppins'),
          headline6: TextStyle(fontFamily: 'Poppins'),
          subtitle1: TextStyle(fontFamily: 'Poppins'),
          subtitle2: TextStyle(fontFamily: 'Poppins'),
          caption: TextStyle(fontFamily: 'Poppins'),
          button: TextStyle(fontFamily: 'Poppins'),
          overline: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Loading(),
    );
  }

}