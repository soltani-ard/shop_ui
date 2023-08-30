import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/category.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/home/category_card.dart';
import 'package:shop_ui/screens/home/components/categories.dart';
import 'package:shop_ui/screens/home/components/search_form.dart';
import 'package:shop_ui/screens/home/components/section_title.dart';
import 'package:shop_ui/screens/home/new_arrival.dart';
import 'package:shop_ui/screens/home/popular.dart';
import 'package:shop_ui/screens/home/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              "New Texas",
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Notification.svg"))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Explore",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.black)),
              const Text(
                "best Outfits for you",
                style: TextStyle(fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: SearchForm(),
              ),
             const Categories(),
              const SizedBox(height: defaultPadding,),
              SectionTitle(title: "New Arrival", pressSeeAll: (){}),
              const NewArrival(),
              SectionTitle(title: "Popular", pressSeeAll: (){}),
              Popular(),



            ],
          ),
        ),
      ),
    );
  }


}
