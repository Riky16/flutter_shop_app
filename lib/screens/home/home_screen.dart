import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_shop_app/screens/home/components/categories.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset("assets/icons/back.svg"),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: kTextColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon:
                  SvgPicture.asset("assets/icons/cart.svg", color: kTextColor),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text(
                "Women",
                // style: Theme.of(context).textTheme.headline5,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: kTextColor),
              ),
            ),
            Categories(),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: kDefaultPadding,
                      crossAxisSpacing: kDefaultPadding,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) =>
                        ItemCard(product: products[index], press: () {})),
              ),
            ),
          ],
        ));
  }
}
