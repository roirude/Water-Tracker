import 'package:flutter/material.dart';
import 'package:water_tracker/views/analysis.dart';
import 'package:water_tracker/views/profile.dart';
import 'package:water_tracker/views/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Rudex Tede',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () { },
              icon: Badge(
                child: Icon(
                  Icons.circle_notifications_rounded,
                  color: Colors.blue[300],
                  size: 36,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.blue,

        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.blue[300],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.analytics),
            icon: Icon(Icons.analytics_outlined),
            label: 'Analysis',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.blue[200],
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '10:00 AM',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            '200ml water(2 Glass)',
                            style: TextStyle(
                              color: Colors.grey[300]
                            ),
                          ),
                          SizedBox(height: 30,),
                          ElevatedButton(
                              onPressed:(){

                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                                padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 30)),
                              ),
                              child: Text(
                                'Add Your Goal',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(Icons.water_drop, size: 150, color:  Colors.white),
                              Positioned(
                                  top: 0,
                                  right: -5,
                                  child: Icon(Icons.water_drop, size: 50, color: Colors.white,)
                              ),
                            ],
                          ),
                      ),
                    ],
                  )
                ),
              ),
              SizedBox(height: 40,),
              Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blue,
                          width: 7,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                        left: 58,
                        child: Text(
                          '500ml',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.white
                          ),
                        ),
                    ),
                    Positioned(
                        top: 30,
                        right: 0,
                        child: Card(
                          color: Colors.grey[50],
                          child: Container(
                            width: 180,
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Target',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Text(
                                      '2000ml',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.water_drop_outlined,
                                  size: 50,
                                  color: Colors.blue[300],
                                ),
                              ],
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Center(
                child: FloatingActionButton.extended(
                    onPressed:() {
                        Analysis();
                    },
                    backgroundColor: Colors.blue[300],
                    label: Text(
                      'Go To Dashboard',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50, top: 20),
                child: Text(
                  'You got 50% of today\'s goal, keep focus on your health!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        ),

        //Analysis
        Analysis(),
        //Settings
        Settings(),
        //Profile
        Profile(),
      ][currentPageIndex],
    );
  }
}