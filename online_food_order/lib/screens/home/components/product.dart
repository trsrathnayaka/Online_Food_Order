import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:online_food_order/model.dart/product_model.dart';

import '../../../constants.dart';

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
    return Padding(
      padding: const EdgeInsets.all(kPadding / 2),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    product.image,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                AutoSizeText(
                  product.title,
                  maxLines: 2,
                  style: TextStyle(fontSize: 15, ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
