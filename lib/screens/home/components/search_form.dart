import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search items',
            filled: true,
            fillColor: Colors.white,
            border: buildOutlineInputBorder(),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset("assets/icons/Search.svg"),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
              child: SizedBox(
                height: 48,
                width: 64,
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                  ElevatedButton.styleFrom(backgroundColor: primaryColor, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)))),
                  child: SvgPicture.asset("assets/icons/Filter.svg",),
                ),
              ),
            ),
          ),
        ));
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        borderSide: BorderSide.none
    );
  }

}
