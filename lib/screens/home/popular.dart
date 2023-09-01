import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/home/product_card.dart';

import '../details/details_screen.dart';

class Popular extends StatelessWidget {
  Popular({super.key});

  List<Product> reverseDemoProduct = demo_products.reversed.toList();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(reverseDemoProduct.length, (index) =>
            Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: ProductCard(
                  title: reverseDemoProduct[index].title,
                  image: reverseDemoProduct[index].image,
                  price: reverseDemoProduct[index].price,
                  bgColor: reverseDemoProduct[index].bgColor,
                  press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: reverseDemoProduct[index]),));
                  }),
            )
        ),),
    );
  }
}
