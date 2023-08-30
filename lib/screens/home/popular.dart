import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/home/product_card.dart';

class Popular extends StatelessWidget {
  Popular({super.key});

  List<Product> reverse_demo_products = demo_products.reversed.toList();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(reverse_demo_products.length, (index) =>
            Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: ProductCard(
                  title: reverse_demo_products[index].title,
                  image: reverse_demo_products[index].image,
                  price: reverse_demo_products[index].price,
                  bgColor: reverse_demo_products[index].bgColor,
                  press: (){}),
            )
        ),),
    );
  }
}
