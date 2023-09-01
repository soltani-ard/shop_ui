import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/details/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black,),
        actions: [
          IconButton(onPressed: (){},icon: CircleAvatar(backgroundColor: Colors.white, child: SvgPicture.asset("assets/icons/Heart.svg", height: 20,)))
        ],
      ),
      body: Column(
        children: [
          Image.asset(product.image, height: MediaQuery.of(context).size.height * 0.4, fit: BoxFit.cover,),
          Expanded(child: Container(
            padding: const EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 2, defaultPadding, defaultPadding),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultBorderRadius * 3),
                topRight: Radius.circular(defaultBorderRadius * 3),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: Text(product.title, style: Theme.of(context).textTheme.titleLarge,)),
                      const SizedBox(width: defaultPadding,),
                      Text("\$${product.price}", style: Theme.of(context).textTheme.titleLarge,)
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Your character prefers summery colors and leans toward an elegant look.  Your character also loves belts and has a love of jewelry.",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const Text("Colors", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
                  const SizedBox(height: defaultPadding / 2,),
                  Row(
                    children: [
                      ColorDot(color: const Color(0xffbee8ea), isActive: false, press: (){}),
                      ColorDot(color: const Color(0xff141b4a), isActive: true, press: (){}),
                      ColorDot(color: const Color(0xfff4e5c3), isActive: false, press: (){}),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 1.5,),
                  Center(
                    child: SizedBox(
                      height: 48,
                      width: 200,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(backgroundColor: primaryColor, foregroundColor: Colors.white),
                          child: const Text("Add to Cart")),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
