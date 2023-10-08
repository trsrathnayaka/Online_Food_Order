// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_food_order/constants.dart';

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
                      Row(
                        children: [
                          Text(
                            "FoodZone",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w900,
                                color: kSecondaryColor),
                          ),
                          Spacer(),
                          //menu
                          HeaderWebMenu(),
                          Spacer(),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.3)),
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                    ),
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide.none),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 22,
                            ),
                          )
                        ],
                      ),
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
