// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:plant_application/screens/home/components/recomends_plants.dart';
import 'package:plant_application/screens/home/components/title_with_more_button.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // total height and width of body
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Recommended",
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreButton(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
        ],
      ),
    );
  }
}
