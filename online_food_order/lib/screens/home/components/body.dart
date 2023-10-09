import 'package:flutter/material.dart';
import 'package:online_food_order/model.dart/product_model.dart';
import 'package:online_food_order/screens/home/components/product.dart';
import 'package:online_food_order/screens/home/components/services_card.dart';

import '../../../constants.dart';
import 'email_banner.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kPadding),
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: [
          ServicesCard(),
          //now we create model of our product images

          GridView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) => Products(
              press: () {},
              product: products[index],
            ),
            itemCount: products.length,
          ),
          SizedBox(
            height: 40,
          ),
          EmailBanner(),
        ],
      ),
    );
  }
}
