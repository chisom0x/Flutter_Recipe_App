// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/boxes_card.dart';
import 'package:myapp/breakfast.dart';
import 'package:myapp/dinner.dart';
import 'package:myapp/foods/amala.dart';
import 'package:myapp/lunch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        duration: 4,
        goToPage: home(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  MyHomePage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Image.asset('images/splash.png'),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 7,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'What would you \nlike to Cook?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => breakfast()));
                      },
                      child: Top(
                          icon: Icons.breakfast_dining_rounded,
                          title: 'Breakfast'),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => lunch()));
                        },
                        child: Top(
                            icon: Icons.lunch_dining_rounded,
                            title: '   Lunch')),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dinner()));
                        },
                        child: Top(
                            icon: Icons.dinner_dining_rounded,
                            title: '   Dinner')),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => amala()));
                  },
                  child: Boxes(
                    title: 'Food Name',
                    subtitle: 'Nigerian Traditional Cuisine',
                    cooktime: '45 Minutes',
                    serving: '3 Servings',
                    imagesrc: 'images/splash.png',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => amala()));
                  },
                  child: Boxes(
                    title: 'Food Name',
                    subtitle: 'Nigerian Traditional Cuisine',
                    cooktime: '45 Minutes',
                    serving: '3 Servings',
                    imagesrc: 'images/splash.png',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => amala()));
                  },
                  child: Boxes(
                    title: 'Food Name',
                    subtitle: 'Nigerian Traditional Cuisine',
                    cooktime: '45 Minutes',
                    serving: '3 Servings',
                    imagesrc: 'images/splash.png',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => amala()));
                  },
                  child: Boxes(
                    title: 'Food Name',
                    subtitle: 'Nigerian Traditional Cuisine',
                    cooktime: '45 Minutes',
                    serving: '3 Servings',
                    imagesrc: 'images/splash.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
