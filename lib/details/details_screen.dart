import 'package:flutter/material.dart';
import 'package:flutter_shop_app/details/components/buy_button.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_shop_app/constants.dart';

import 'components/color_and_size.dart';
import 'components/counter.dart';
import 'components/header_product.dart';

class DetailScreen extends StatelessWidget {
  // const DetailScreen({Key? key}) : super(key: key);

  final Product product;

  DetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg", color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg",
                color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon:
                SvgPicture.asset("assets/icons/cart.svg", color: Colors.white),
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          )
        ],
      ),
      body: Container(
        color: product.color,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: kDefaultPadding,
                        right: kDefaultPadding,
                      ),
                      // height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 25),
                          ColorAndSize(product: product),
                          SizedBox(height: 25),
                          Text(
                            product.description,
                            style:
                                TextStyle(fontSize: 16, color: kTextLightColor),
                          ),
                          SizedBox(height: 25),
                          Counter(),
                          SizedBox(height: 25),
                          BuyButton(
                            product: product,
                          )
                        ],
                      ),
                    ),
                    HeaderProduct(product: product),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
