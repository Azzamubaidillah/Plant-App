// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:plant_application/constants.dart';
import 'package:plant_application/screens/home/components/title_with_more_button.dart';

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
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 2.5,
            ),
            // 40% total width
            width: size.width * 0.4,
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/image_1.png"),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Samantha\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button,
                            ),
                            TextSpan(
                              text: "Russia".toUpperCase(),
                              style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$440',
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: kPrimaryColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
