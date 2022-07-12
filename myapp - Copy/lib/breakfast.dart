// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/boxes_card.dart';
import 'package:myapp/foods/amala.dart';

class breakfast extends StatelessWidget {
  const breakfast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context, true);
                              },
                              child: Icon(Icons.arrow_back_ios_new)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Breakfast Recipes',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
