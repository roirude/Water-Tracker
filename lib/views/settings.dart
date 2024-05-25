import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _Settings();
  }
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reminder Settings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20,),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(height: 20,),
            Text(
              'Reminder Sound',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20,),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reminder Sound',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                TextButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Reminder Sound',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                      ),
                    ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(height: 20,),
            Text(
              'General',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20,),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(height: 20,),
            Text(
              'Remove ADS',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20,),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Light or Dart interface',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: Text(
                    'light',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Unit',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: Text(
                    'kl,ml',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Divider(
              height: 1,
              thickness: 1,
            ),SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Intake goal',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: Text(
                    '2 000 ml',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}