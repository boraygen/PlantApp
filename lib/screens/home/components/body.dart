import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:re_plant_app/models/plant_card.dart';
import 'package:re_plant_app/screens/home/components/header_with_search_bar.dart';
import 'package:re_plant_app/screens/home/components/title_with_more_button.dart';


class Body extends StatelessWidget {
  const Body({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: size),
          TitleWithMoreButton(
            title: "Recommended",
            press: () {},
          ),
          PlantCard(
            image: "assets/images/image_1.png",
            name: "samantha",
            country: "russia",
            price: 400,
            press: () {},
          )
        ]
      ),
    );
  }
}
