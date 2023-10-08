// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_food_order/constants.dart';

import '../../model.dart/product_model.dart';
import 'components/banner_section.dart';
import 'components/header.dart';
import 'components/header_container.dart';
import 'components/menu.dart';
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

class Products extends StatelessWidget {
  const Products({
    super.key,
    required this.product,
    required this.press,
  });
  final Product product;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(kPadding / 2),
          height: 310,
          width: 310,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/images/big-sandwich-hamburger.jpg",
                  height: 250,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Big Sandwich",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
