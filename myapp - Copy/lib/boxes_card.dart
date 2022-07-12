// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
  final String title;
  final String subtitle;
  final String cooktime;
  final String serving;
  final String imagesrc;

  Boxes(
      {required this.title,
      required this.subtitle,
      required this.cooktime,
      required this.serving,
      required this.imagesrc});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 100,
                  width: 350,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8,
                        left: 5,
                        child: Row(
                          children: [
                            Container(
                                height: 95,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  image: DecorationImage(
                                      image: AssetImage(imagesrc),
                                      fit: BoxFit.cover),
                                ))
                          ], //children
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 110,
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 55,
                        left: 110,
                        child: Row(
                          children: [
                            Text(
                              subtitle,
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 77,
                        left: 110,
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: Colors.grey,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              cooktime,
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.pie_chart_outline,
                              color: Colors.grey,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              serving,
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Top extends StatelessWidget {
  final IconData icon;
  final String title;

  Top({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: const Offset(-7.0, 7.0),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
              child: Stack(
                children: [
                  Center(
                    child: Icon(
                      icon,
                      color: Colors.orange,
                      size: 40.0,
                    ),
                  ),
                  Positioned(
                    top: 65,
                    left: 20,
                    child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}

class Foodtop extends StatelessWidget {
  final IconData icon;
  final String title;

  Foodtop({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: const Offset(-7.0, 7.0),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
              child: Stack(
                children: [
                  Center(
                    child: Icon(
                      icon,
                      color: Colors.orange,
                      size: 40.0,
                    ),
                  ),
                  Positioned(
                    top: 65,
                    left: 16.5,
                    child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class ingridients extends StatelessWidget {
  final String ingridient;

  ingridients({required this.ingridient});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: ListTile(
            leading: Icon(
              Icons.circle_rounded,
              color: Colors.orange,
              size: 16,
            ),
            title: Text(
              ingridient,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
            ),
          ),
        ),
      ],
    );
  }
}
