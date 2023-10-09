// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_food_order/constants.dart';

import '../../model.dart/product_model.dart';
import 'components/banner_section.dart';
import 'components/header.dart';
import 'components/header_container.dart';
import 'components/menu.dart';
import 'components/product.dart';
import 'components/services_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(),
            Container(
              padding: EdgeInsets.all(kPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: Column(
                children: [
                  ServicesCard(),
                  //now we create model of our product images

                  GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) => Products(
                      press: () {},
                      product: products[index],
                    ),
                    itemCount: products.length,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                                "assets/images/subscribe_banner.jpg")),
                        Padding(
                          padding: const EdgeInsets.all(kPadding),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  "Join our member and get\ndiscount up to 50%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color:
                                                  Colors.grey.withOpacity(0.3)),
                                        ),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: "Enter your email here",
                                              hintStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: kSecondaryColor,
                                      ),
                                      child: Icon(
                                        Icons.shopping_bag_outlined,
                                        color: Colors.white,
                                        size: 22,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
