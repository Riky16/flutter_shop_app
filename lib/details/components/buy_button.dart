import 'package:flutter/material.dart';
import 'package:flutter_shop_app/models/product.dart';

class BuyButton extends StatelessWidget {
  // const BuyButton({Key? key}) : super(key: key);

  final Product product;

  const BuyButton({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            // primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            minimumSize: Size(50, 50),
          ),
          child: Icon(Icons.shopping_cart_outlined),
        ),
        SizedBox(width: 20),
        Expanded(
            child: SizedBox(
          height: 50,
          child: OutlinedButton(
            onPressed: () {},
            child: Text("BUY NOW"),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: product.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
