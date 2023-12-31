import 'package:flutter/material.dart';
import 'package:online_food_order/model.dart/product_model.dart';
import 'package:online_food_order/model.dart/responsive.dart';
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
    final Size_size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kPadding),
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: [
          ServicesCard(),
          //now we create model of our product images

          Responsive(
            desktop: ProductCard(
              crossAxiscount: Size_size.width<650?2:3,
              aspectRatio: Size_size.width<650?0.85:1.1,
            ),
            tablet: ProductCard(
               crossAxiscount: Size_size.width < 825 ? 2 : 3,
              aspectRatio: Size_size.width < 825 ? 0.85 : 1.1,
            ),
            mobile: ProductCard(
               crossAxiscount: Size_size.width < 690 ? 2 : 3,
              aspectRatio: Size_size.width < 560 ? 0.85 : 1.1,
            ),
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



class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.crossAxiscount = 3,
    this.aspectRatio = 1.1,
  });
  final int crossAxiscount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxiscount,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) => Products(
        press: () {},
        product: products[index],
      ),
      itemCount: products.length,
    );
  }
}
