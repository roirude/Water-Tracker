import 'package:flutter/material.dart';

import '../color/appcolors.dart';

enum Sex {male, female}

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Profile();
  }
}

class _Profile extends State<Profile> {
  Sex _selectedSex = Sex.male;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Divider(
                    height: 1,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Profile',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Colors.blue,
                          )
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.person_rounded,
                      size: 100,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'First Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Rudex',
                          fillColor: Colors.blue[50],
                        ),
                        style: TextStyle(
                            color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Last Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Tede',
                          fillColor: Colors.blue[50],
                        ),
                        style: TextStyle(
                            color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'rudextede1@gmail.com',
                          fillColor: Colors.blue[50],
                        ),
                        style: TextStyle(
                            color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: '22',
                          fillColor: Colors.blue[50]
                        ),
                        style: TextStyle(
                            color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}