// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_food_order/constants.dart';

import 'components/header.dart';
import 'components/menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: kPrimaryColor,
            height: 500,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(kPadding),
                  constraints: BoxConstraints(maxWidth: kMaxWidth),
                  child: Column(
                    children: [
                      Header(),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "Eat today",
                                  style: TextStyle(
                                      fontSize: 56,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Live another day",
                                  style: TextStyle(
                                    fontSize: 56,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "how to make complete responsive food / restaurant website design flutter",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.3)),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                          Icons.adjust_rounded,
                                          color: kSecondaryColor,
                                        ),
                                        hintText:
                                            "Search your favorite food item",
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide.none),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                   Expanded(
                                     child: MaterialButton(
                                      height: 50,
                                      color: kSecondaryColor,
                                   
                                      onPressed: () {},child: Text("Delivery"),),
                                   ),
                                    Text("or"),
                                    Expanded(
                                      child: OutlinedButton(onPressed: () {}, child: Text("Pick Up"),style: OutlinedButton.styleFrom(
                                        
                                        side: BorderSide(color: kSecondaryColor)
                                      ),),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Image.asset("assets/images/banner.png"),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
