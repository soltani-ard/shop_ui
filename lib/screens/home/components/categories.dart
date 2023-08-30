import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/category.dart';
import 'package:shop_ui/screens/home/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(demo_categories.length, (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding / 2),
            child: CategoryCard(icon: demo_categories[index].icon, title: demo_categories[index].title, press: (){}),
          )),));
  }
}
