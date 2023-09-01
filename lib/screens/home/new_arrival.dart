import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/details/details_screen.dart';
import 'package:shop_ui/screens/home/product_card.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(demo_products.length, (index) =>
            Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: ProductCard(
                  title: demo_products[index].title,
                  image: demo_products[index].image,
                  price: demo_products[index].price,
                  bgColor: demo_products[index].bgColor,
                  press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: demo_products[index]),));
                  }),
            )
        ),),
    );
  }
}
