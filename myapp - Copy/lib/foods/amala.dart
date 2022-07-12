// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/boxes_card.dart';

class amala extends StatelessWidget {
  const amala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Center(
                      child: Text(
                    'Food name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                ),
              ),
              pinned: true,
              backgroundColor: Colors.orange,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/splash.png',
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Foodtop(
                            icon: Icons.access_time_filled_outlined,
                            title: '45 Minutes ',
                          ),
                          Foodtop(
                            icon: Icons.pie_chart_outline_outlined,
                            title: '4 servings',
                          ),
                          Foodtop(
                            icon: Icons.fire_extinguisher,
                            title: '  Medium',
                          ),
                        ],
                      ),
                      Container(
                        //  color: Colors.white,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Ingridients',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        children: [
                          ingridients(
                              ingridient:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                          ingridients(
                              ingridient:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                          ingridients(
                              ingridient:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                          ingridients(
                              ingridient:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Directions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                height: 60,
                                width: 10,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur \nDuis gravida, risus sed dapibus comit\nquis porttitor eros magna eu turpis.\nquis ligula ut sapien cursus dignissim \nEtiam dapibus bibendum tellus, at accumsan ',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                height: 60,
                                width: 10,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur \nDuis gravida, risus sed dapibus comit\nquis porttitor eros magna eu turpis.\nquis ligula ut sapien cursus dignissim \nEtiam dapibus bibendum tellus, at accumsan ',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                height: 60,
                                width: 10,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur \nDuis gravida, risus sed dapibus comit\nquis porttitor eros magna eu turpis.\nquis ligula ut sapien cursus dignissim \nEtiam dapibus bibendum tellus, at accumsan ',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ])),
                  ], // parent children
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
