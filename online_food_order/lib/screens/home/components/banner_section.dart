import 'package:flutter/material.dart';

import '../../../constants.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Text(
                "Eat today",
                style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
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
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.adjust_rounded,
                        color: kSecondaryColor,
                      ),
                      hintText: "Search your favorite food item",
                      hintStyle:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                      focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      height: 55,
                      color: kSecondaryColor,
                      onPressed: () {},
                      child: Text("Delivery"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "or",
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Pick Up",
                          style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: kSecondaryColor)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: 20,
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
    );
  }
}